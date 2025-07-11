part of 'user_list_bloc.dart';

enum UserListStatus { initial, loading, success, failure }


@freezed 
abstract class UserListState with _$UserListState {
   const factory UserListState({
    @Default(UserListStatus.initial) UserListStatus status,
    @Default([]) List<User> users,
    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    String? errorMessage,
  }) = _UserListState;
}
