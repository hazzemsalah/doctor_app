import 'package:doctor_app/features/home/ui/widgets/doctors_bloc_builder.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_bloc_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
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
