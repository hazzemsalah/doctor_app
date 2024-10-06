import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/specializatons_list/speciality_image_map.dart';
import 'package:flutter/material.dart';

class SeeAllSpecializationsItem extends StatelessWidget {
  final SpecializationsData specializationData;

  const SeeAllSpecializationsItem({super.key, required this.specializationData});

  @override
  Widget build(BuildContext context) {
    // Get the specialization name, fallback to "General" if name is null or empty
    final specializationName = specializationData.name ?? 'General';

    // Get the asset path for the specialization, default to general if not found
    final specializationImage = specializationImages[specializationName] ?? specializationImages['General'];

    return Card(
      elevation: 4.0,
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
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
