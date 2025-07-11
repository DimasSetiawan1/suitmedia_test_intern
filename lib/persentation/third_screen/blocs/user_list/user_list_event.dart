part of 'user_list_bloc.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.started() = _Started;
  const factory UserListEvent.fetch() = _Fetch;
  const factory UserListEvent.refresh() = _Refresh;
}
