// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AuthState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements AuthState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$PhoneNumberSubmitedImplCopyWith<T, $Res> {
  factory _$$PhoneNumberSubmitedImplCopyWith(_$PhoneNumberSubmitedImpl<T> value,
          $Res Function(_$PhoneNumberSubmitedImpl<T>) then) =
      __$$PhoneNumberSubmitedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PhoneNumberSubmitedImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$PhoneNumberSubmitedImpl<T>>
    implements _$$PhoneNumberSubmitedImplCopyWith<T, $Res> {
  __$$PhoneNumberSubmitedImplCopyWithImpl(_$PhoneNumberSubmitedImpl<T> _value,
      $Res Function(_$PhoneNumberSubmitedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneNumberSubmitedImpl<T> implements PhoneNumberSubmited<T> {
  const _$PhoneNumberSubmitedImpl();

  @override
  String toString() {
    return 'AuthState<$T>.phoneNumberSubmited()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberSubmitedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return phoneNumberSubmited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return phoneNumberSubmited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (phoneNumberSubmited != null) {
      return phoneNumberSubmited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return phoneNumberSubmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return phoneNumberSubmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (phoneNumberSubmited != null) {
      return phoneNumberSubmited(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberSubmited<T> implements AuthState<T> {
  const factory PhoneNumberSubmited() = _$PhoneNumberSubmitedImpl<T>;
}

/// @nodoc
abstract class _$$PhoneOtpVerifiedImplCopyWith<T, $Res> {
  factory _$$PhoneOtpVerifiedImplCopyWith(_$PhoneOtpVerifiedImpl<T> value,
          $Res Function(_$PhoneOtpVerifiedImpl<T>) then) =
      __$$PhoneOtpVerifiedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PhoneOtpVerifiedImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$PhoneOtpVerifiedImpl<T>>
    implements _$$PhoneOtpVerifiedImplCopyWith<T, $Res> {
  __$$PhoneOtpVerifiedImplCopyWithImpl(_$PhoneOtpVerifiedImpl<T> _value,
      $Res Function(_$PhoneOtpVerifiedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneOtpVerifiedImpl<T> implements PhoneOtpVerified<T> {
  const _$PhoneOtpVerifiedImpl();

  @override
  String toString() {
    return 'AuthState<$T>.phoneOtpVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneOtpVerifiedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return phoneOtpVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return phoneOtpVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (phoneOtpVerified != null) {
      return phoneOtpVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return phoneOtpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return phoneOtpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (phoneOtpVerified != null) {
      return phoneOtpVerified(this);
    }
    return orElse();
  }
}

abstract class PhoneOtpVerified<T> implements AuthState<T> {
  const factory PhoneOtpVerified() = _$PhoneOtpVerifiedImpl<T>;
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<T, $Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl<T> value, $Res Function(_$CreateUserImpl<T>) then) =
      __$$CreateUserImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$CreateUserImpl<T>>
    implements _$$CreateUserImplCopyWith<T, $Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl<T> _value, $Res Function(_$CreateUserImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CreateUserImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl<T> implements CreateUser<T> {
  const _$CreateUserImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.createUser(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<T, _$CreateUserImpl<T>> get copyWith =>
      __$$CreateUserImplCopyWithImpl<T, _$CreateUserImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return createUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return createUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUser<T> implements AuthState<T> {
  const factory CreateUser(final T data) = _$CreateUserImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$CreateUserImplCopyWith<T, _$CreateUserImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() phoneNumberSubmited,
    required TResult Function() phoneOtpVerified,
    required TResult Function(T data) createUser,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? phoneNumberSubmited,
    TResult? Function()? phoneOtpVerified,
    TResult? Function(T data)? createUser,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? phoneNumberSubmited,
    TResult Function()? phoneOtpVerified,
    TResult Function(T data)? createUser,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(PhoneNumberSubmited<T> value) phoneNumberSubmited,
    required TResult Function(PhoneOtpVerified<T> value) phoneOtpVerified,
    required TResult Function(CreateUser<T> value) createUser,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult? Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult? Function(CreateUser<T> value)? createUser,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(PhoneNumberSubmited<T> value)? phoneNumberSubmited,
    TResult Function(PhoneOtpVerified<T> value)? phoneOtpVerified,
    TResult Function(CreateUser<T> value)? createUser,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements AuthState<T> {
  const factory Error({required final String error}) = _$ErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
