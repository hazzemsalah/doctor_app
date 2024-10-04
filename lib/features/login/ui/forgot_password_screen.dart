import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/core/widgets/custom_auth_header_text.dart.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = context.read<LoginCubit>();

    return Scaffold(
      body: Form(
        key: cubit.formKey,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomAuthHeaderText(
                  title: "Forgot Password",
                  subTitle:
                      "At our app, we take the security of your information seriously.",
                ),
                const SizedBox(height: 32),
                AppTextFormField(
                  hintText: 'Email or Phone Number',
                  controller: cubit.emailController,
                  validator: (emailOrNum) {
                    if (emailOrNum == null || emailOrNum.isEmpty) {
                      return 'Please enter your email or phone number';
                    }
                    return null;
                  },
                ),
                const Spacer(),
                AppTextButton(
                  buttonText: "Reset Password",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    if (cubit.formKey.currentState!.validate()) {}
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
