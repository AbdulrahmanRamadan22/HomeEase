import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/show_progress_indicator.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';
import 'package:home_ease/features/auth/forgetpassword/logic/resetpassword_cubit.dart';
import 'package:home_ease/features/auth/forgetpassword/logic/resetpassword_state.dart';

class ForgetPasswordBlocListener extends StatelessWidget {
  const ForgetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetpasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is ResetPasswordSuccess ||
          current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showProgressIndicator(context);
          },
          resetPasswordSuccess: () {
            context.pop();
            showSnackBar(
              context,
              content: "Login successfully go to home screen",
              backgroundColor: ColorsApp.mainGreen,
            );
            context.pushNamed(
              Routes.resetPasswordScreen,
            );
          },
          error: (error) {
            context.pop();

            showSnackBar(
              context,
              content: error.toString(),
              backgroundColor: ColorsApp.red,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
