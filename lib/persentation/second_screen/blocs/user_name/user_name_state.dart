part of 'user_name_bloc.dart';

@freezed
class UserNameState with _$UserNameState {
  const factory UserNameState.initial() = _Initial;
  const factory UserNameState.showName(String name) = _ShowName;
}
