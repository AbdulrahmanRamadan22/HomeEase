import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = Loading;

  const factory AuthState.phoneNumberSubmited() = PhoneNumberSubmited<T>;
  const factory AuthState.phoneOtpVerified() = PhoneOtpVerified<T>;

  const factory AuthState.createUser(T data) = CreateUser<T>;

  const factory AuthState.error({required String error}) = Error;
}
