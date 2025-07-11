import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'palindrome_validation_event.dart';
part 'palindrome_validation_state.dart';
part 'palindrome_validation_bloc.freezed.dart';

class PalindromeValidationBloc
    extends Bloc<PalindromeValidationEvent, PalindromeValidationState> {
  PalindromeValidationBloc() : super(const _Initial()) {
    on<_Validate>(_onValidate);
  }

  _onValidate(_Validate event, Emitter emit) {
    final cleanedInput = event.input
        .replaceAll(RegExp(r'[\W_]+'), '')
        .toLowerCase();
    final isPalindrome =
        cleanedInput == cleanedInput.split('').reversed.join('');
    emit(_Validated(isPalindrome));
  }
}
