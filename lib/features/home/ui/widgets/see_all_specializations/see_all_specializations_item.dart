import 'package:doctor_app/core/routes/routes.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/specializatons_list/speciality_image_map.dart';
import 'package:flutter/material.dart';

class SeeAllSpecializationsItem extends StatelessWidget {
  final SpecializationsData specializationData;

  const SeeAllSpecializationsItem(
      {super.key, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    final specializationName = specializationData.name ?? 'General';
    final specializationImage = specializationImages[specializationName] ??
        specializationImages['General'];

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.specializationDoctorsScreen,
          arguments: specializationData,
        );
      },
      child: Card(
        elevation: 3.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              specializationImage!,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 8.0),
            Text(
              specializationName,
              textAlign: TextAlign.center,
              style: TextStyles.font14DarkBlueMedium,
            ),
          ],
        ),
      ),
    );
  }
}
