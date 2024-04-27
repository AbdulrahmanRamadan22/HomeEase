

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetpassword_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState<T> {
  
  const factory ResetPasswordState.initial() = _Initial;

  const factory ResetPasswordState.loading() = Loading;

  const factory ResetPasswordState.resetPasswordSuccess() = ResetPasswordSuccess;

  const factory ResetPasswordState.error({required String error}) = Error;
}