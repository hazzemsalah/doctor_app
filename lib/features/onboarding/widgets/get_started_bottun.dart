import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routes/routes.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class GetStartedBottun extends StatelessWidget {
  const GetStartedBottun({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const WidgetStatePropertyAll(
          Size(double.infinity, 52),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        "Get Started",
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
