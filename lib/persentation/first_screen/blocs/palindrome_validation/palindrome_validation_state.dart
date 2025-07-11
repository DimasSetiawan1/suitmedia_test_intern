part of 'palindrome_validation_bloc.dart';

@freezed
class PalindromeValidationState with _$PalindromeValidationState {
  const factory PalindromeValidationState.initial() = _Initial;
  const factory PalindromeValidationState.validated(bool isPalindrome) =
      _Validated;
 
}
