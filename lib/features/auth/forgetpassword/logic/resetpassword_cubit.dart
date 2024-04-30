import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/auth/forgetpassword/data/forget_Password_repo.dart';
import 'package:home_ease/features/auth/forgetpassword/logic/resetpassword_state.dart';

class ResetpasswordCubit extends Cubit<ResetPasswordState> {
  ResetpasswordCubit(this.forGetPasswordRepo)
      : super(const ResetPasswordState.initial());

  final service = FirestoreServices.instance;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  ForGetPasswordRepo forGetPasswordRepo;

  Future<void> emitResetpasswordStates() async {
    emit(const ResetPasswordState.loading());
    final response = await forGetPasswordRepo.resetPassword(
      email: emailController.text,
    );
    response.when(success: (value) {
      emit(const ResetPasswordState.resetPasswordSuccess());
    }, failure: (error) {
      emit(ResetPasswordState.error(error: error.toString()));
    });
  }
}
