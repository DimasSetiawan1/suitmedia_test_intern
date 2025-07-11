part of 'user_name_bloc.dart';

@freezed
class UserNameEvent with _$UserNameEvent {
  const factory UserNameEvent.started() = _Started;
  const factory UserNameEvent.setName(String name) = _SetName;
  
  
}