import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routes/routes.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            final specializations = context.read<HomeCubit>().currentSpecializations;
            context.pushNamed(
              Routes.seeAllSpecializatiosScreen,
              arguments: specializations,
            );
          },
          child: Text(
            'See All',
            style: TextStyles.font12BlueRegular,
          ),
        ),
      ],
    );
  }
}