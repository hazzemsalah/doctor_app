import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';

class SpecializationDoctorsScreen extends StatelessWidget {
  final SpecializationsData specializationData;

  const SpecializationDoctorsScreen(
      {super.key, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${specializationData.name} Doctors',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        centerTitle: true,
        surfaceTintColor: ColorsManager.mainBlue,
        backgroundColor: Colors.white,
        
      ),
      body: SafeArea(
        child: DoctorsListView(doctorsList: specializationData.doctorsList),
      ),
    );
  }
}
