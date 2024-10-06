import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  final String name;
  const HomeTopBar({super.key , required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, $name!",
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font12GrayRegular,
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}
