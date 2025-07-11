import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suitmedia_test/data/datasource/get_user_datasource.dart';
import 'package:suitmedia_test/data/entity/user.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetUserDatasource getUserDatasource;
  UserListBloc({required this.getUserDatasource})
    : super(const UserListState()) {
    on<_Fetch>(_onFetchUser);
    on<_Refresh>(_onRefresh);
  }
  _onRefresh(_Refresh event, Emitter emit) async {
    emit(const UserListState(status: UserListStatus.loading));
    try {
      final result = await getUserDatasource.getUser(1);
      result.fold(
        (error) => emit(
          state.copyWith(status: UserListStatus.failure, errorMessage: error),
        ),
        (users) {
          emit(
            state.copyWith(
              status: UserListStatus.success,
              users: users,
              hasReachedMax: false,
              page: 2,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: UserListStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  _onFetchUser(_Fetch event, Emitter emit) async {
    if (state.hasReachedMax) return;

    try {
      if (state.status == UserListStatus.initial) {
        emit(state.copyWith(status: UserListStatus.loading));
      }
      log('Fetching users for page: ${state.page}');
      final result = await getUserDatasource.getUser(state.page);
      result.fold(
        (error) => emit(
          state.copyWith(status: UserListStatus.failure, errorMessage: error),
        ),
        (users) {
          if (users.isEmpty) {
            emit(
              state.copyWith(
                hasReachedMax: true,
                status: UserListStatus.success,
              ),
            );
          } else {
            emit(
              state.copyWith(
                status: UserListStatus.success,
                users: List.of(state.users)..addAll(users),
                page: state.page + 1,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: UserListStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
