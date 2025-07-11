// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserNameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserNameEvent()';
}


}

/// @nodoc
class $UserNameEventCopyWith<$Res>  {
$UserNameEventCopyWith(UserNameEvent _, $Res Function(UserNameEvent) __);
}


/// Adds pattern-matching-related methods to [UserNameEvent].
extension UserNameEventPatterns on UserNameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _SetName value)?  setName,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SetName() when setName != null:
return setName(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _SetName value)  setName,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _SetName():
return setName(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _SetName value)?  setName,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SetName() when setName != null:
return setName(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String name)?  setName,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SetName() when setName != null:
return setName(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String name)  setName,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _SetName():
return setName(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String name)?  setName,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SetName() when setName != null:
return setName(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserNameEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserNameEvent.started()';
}


}




/// @nodoc


class _SetName implements UserNameEvent {
  const _SetName(this.name);
  

 final  String name;

/// Create a copy of UserNameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetNameCopyWith<_SetName> get copyWith => __$SetNameCopyWithImpl<_SetName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'UserNameEvent.setName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$SetNameCopyWith<$Res> implements $UserNameEventCopyWith<$Res> {
  factory _$SetNameCopyWith(_SetName value, $Res Function(_SetName) _then) = __$SetNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$SetNameCopyWithImpl<$Res>
    implements _$SetNameCopyWith<$Res> {
  __$SetNameCopyWithImpl(this._self, this._then);

  final _SetName _self;
  final $Res Function(_SetName) _then;

/// Create a copy of UserNameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_SetName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserNameState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNameState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserNameState()';
}


}

/// @nodoc
class $UserNameStateCopyWith<$Res>  {
$UserNameStateCopyWith(UserNameState _, $Res Function(UserNameState) __);
}


/// Adds pattern-matching-related methods to [UserNameState].
extension UserNameStatePatterns on UserNameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _ShowName value)?  showName,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ShowName() when showName != null:
return showName(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _ShowName value)  showName,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _ShowName():
return showName(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _ShowName value)?  showName,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _ShowName() when showName != null:
return showName(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String name)?  showName,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ShowName() when showName != null:
return showName(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String name)  showName,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _ShowName():
return showName(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String name)?  showName,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _ShowName() when showName != null:
return showName(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserNameState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserNameState.initial()';
}


}




/// @nodoc


class _ShowName implements UserNameState {
  const _ShowName(this.name);
  

 final  String name;

/// Create a copy of UserNameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowNameCopyWith<_ShowName> get copyWith => __$ShowNameCopyWithImpl<_ShowName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'UserNameState.showName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ShowNameCopyWith<$Res> implements $UserNameStateCopyWith<$Res> {
  factory _$ShowNameCopyWith(_ShowName value, $Res Function(_ShowName) _then) = __$ShowNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ShowNameCopyWithImpl<$Res>
    implements _$ShowNameCopyWith<$Res> {
  __$ShowNameCopyWithImpl(this._self, this._then);

  final _ShowName _self;
  final $Res Function(_ShowName) _then;

/// Create a copy of UserNameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ShowName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
