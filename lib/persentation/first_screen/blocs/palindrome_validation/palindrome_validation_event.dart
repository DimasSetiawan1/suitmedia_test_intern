part of 'palindrome_validation_bloc.dart';

@freezed
class PalindromeValidationEvent with _$PalindromeValidationEvent {
  const factory PalindromeValidationEvent.started() = _Started;
  const factory PalindromeValidationEvent.validate(String input) = _Validate;

}