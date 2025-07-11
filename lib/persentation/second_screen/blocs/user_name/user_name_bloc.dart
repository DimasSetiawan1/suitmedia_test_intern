import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_name_event.dart';
part 'user_name_state.dart';
part 'user_name_bloc.freezed.dart';

class UserNameBloc extends Bloc<UserNameEvent, UserNameState> {
  UserNameBloc() : super(const _Initial()) {
    on<_SetName>((event, emit) {
      emit(UserNameState.showName(event.name));
    });
  }
}
