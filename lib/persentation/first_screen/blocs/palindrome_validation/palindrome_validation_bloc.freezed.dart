// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palindrome_validation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PalindromeValidationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PalindromeValidationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeValidationEvent()';
}


}

/// @nodoc
class $PalindromeValidationEventCopyWith<$Res>  {
$PalindromeValidationEventCopyWith(PalindromeValidationEvent _, $Res Function(PalindromeValidationEvent) __);
}


/// Adds pattern-matching-related methods to [PalindromeValidationEvent].
extension PalindromeValidationEventPatterns on PalindromeValidationEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Validate value)?  validate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Validate() when validate != null:
return validate(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Validate value)  validate,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Validate():
return validate(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Validate value)?  validate,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Validate() when validate != null:
return validate(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String input)?  validate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Validate() when validate != null:
return validate(_that.input);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String input)  validate,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Validate():
return validate(_that.input);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String input)?  validate,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Validate() when validate != null:
return validate(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements PalindromeValidationEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeValidationEvent.started()';
}


}




/// @nodoc


class _Validate implements PalindromeValidationEvent {
  const _Validate(this.input);
  

 final  String input;

/// Create a copy of PalindromeValidationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateCopyWith<_Validate> get copyWith => __$ValidateCopyWithImpl<_Validate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Validate&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'PalindromeValidationEvent.validate(input: $input)';
}


}

/// @nodoc
abstract mixin class _$ValidateCopyWith<$Res> implements $PalindromeValidationEventCopyWith<$Res> {
  factory _$ValidateCopyWith(_Validate value, $Res Function(_Validate) _then) = __$ValidateCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class __$ValidateCopyWithImpl<$Res>
    implements _$ValidateCopyWith<$Res> {
  __$ValidateCopyWithImpl(this._self, this._then);

  final _Validate _self;
  final $Res Function(_Validate) _then;

/// Create a copy of PalindromeValidationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_Validate(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PalindromeValidationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PalindromeValidationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeValidationState()';
}


}

/// @nodoc
class $PalindromeValidationStateCopyWith<$Res>  {
$PalindromeValidationStateCopyWith(PalindromeValidationState _, $Res Function(PalindromeValidationState) __);
}


/// Adds pattern-matching-related methods to [PalindromeValidationState].
extension PalindromeValidationStatePatterns on PalindromeValidationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Validated value)?  validated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Validated() when validated != null:
return validated(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Validated value)  validated,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Validated():
return validated(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Validated value)?  validated,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Validated() when validated != null:
return validated(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isPalindrome)?  validated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Validated() when validated != null:
return validated(_that.isPalindrome);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isPalindrome)  validated,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Validated():
return validated(_that.isPalindrome);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isPalindrome)?  validated,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Validated() when validated != null:
return validated(_that.isPalindrome);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PalindromeValidationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PalindromeValidationState.initial()';
}


}




/// @nodoc


class _Validated implements PalindromeValidationState {
  const _Validated(this.isPalindrome);
  

 final  bool isPalindrome;

/// Create a copy of PalindromeValidationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidatedCopyWith<_Validated> get copyWith => __$ValidatedCopyWithImpl<_Validated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Validated&&(identical(other.isPalindrome, isPalindrome) || other.isPalindrome == isPalindrome));
}


@override
int get hashCode => Object.hash(runtimeType,isPalindrome);

@override
String toString() {
  return 'PalindromeValidationState.validated(isPalindrome: $isPalindrome)';
}


}

/// @nodoc
abstract mixin class _$ValidatedCopyWith<$Res> implements $PalindromeValidationStateCopyWith<$Res> {
  factory _$ValidatedCopyWith(_Validated value, $Res Function(_Validated) _then) = __$ValidatedCopyWithImpl;
@useResult
$Res call({
 bool isPalindrome
});




}
/// @nodoc
class __$ValidatedCopyWithImpl<$Res>
    implements _$ValidatedCopyWith<$Res> {
  __$ValidatedCopyWithImpl(this._self, this._then);

  final _Validated _self;
  final $Res Function(_Validated) _then;

/// Create a copy of PalindromeValidationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPalindrome = null,}) {
  return _then(_Validated(
null == isPalindrome ? _self.isPalindrome : isPalindrome // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
