import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/ui/widgets/specializatons_list/specializations_bloc_builder.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = context.read<SignupCubit>().nameController.text;
    final displayName = userName.isNotEmpty ? userName : "Guest";

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(name: displayName),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(12),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
