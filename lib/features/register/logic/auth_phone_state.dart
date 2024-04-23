import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_phone_state.freezed.dart';

@freezed
class AuthPhoneState<T> with _$AuthPhoneState<T> {
  const factory AuthPhoneState.initial() = _Initial;

  const factory AuthPhoneState.loading() = Loading;

  const factory AuthPhoneState.phoneNumberSubmited() = PhoneNumberSubmited<T>;
  const factory AuthPhoneState.phoneOtpVerified() = PhoneOtpVerified<T>;

  const factory AuthPhoneState.createUser(T data) = CreateUser<T>;

  const factory AuthPhoneState.error({required String error}) = Error;
}
