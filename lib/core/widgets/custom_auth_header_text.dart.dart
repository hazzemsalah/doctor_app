import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomAuthHeaderText extends StatelessWidget {
  const CustomAuthHeaderText(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.font24BlueBold,
          ),
          const SizedBox(height: 8),
          Text(
            subTitle,
            style: TextStyles.font14GrayRegular,
          ),
        ],
      ),
    );
  }
}