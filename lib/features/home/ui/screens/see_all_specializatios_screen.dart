import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/see_all_specializations/see_all_specializations_list_view.dart';
import 'package:flutter/material.dart';

class SeeAllSpecializationsScreen extends StatelessWidget {
  final List<SpecializationsData?>? specializations;

  const SeeAllSpecializationsScreen({super.key, required this.specializations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Specializations',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SeeAllSpecializationsListView(
            specializationsDataList: specializations),
      ),
    );
  }
}
