import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/routes/routes.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/custom_auth_header_text.dart.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doctor_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAuthHeaderText(
                  title: 'Welcome Back',
                  subTitle:
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                ),
                // Text("Welcome Back", style: TextStyles.font24BlueBold),
                // verticalSpace(8),
                // Text(
                //   "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                //   style: TextStyles.font14GrayRegular,
                // ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            context.pushReplacementNamed(
                                Routes.forgetPasswordScreen);
                          },
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyles.font13BlueRegular,
                          ),
                        );
                      }),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLigin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLigin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
