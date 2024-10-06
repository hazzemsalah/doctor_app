import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/see_all_specializations/see_all_specializations_item.dart';
import 'package:flutter/material.dart';

class SeeAllSpecializationsListView extends StatelessWidget {
  final List<SpecializationsData?>? specializationsDataList;

  const SeeAllSpecializationsListView({super.key, required this.specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: specializationsDataList!.length,
      itemBuilder: (context, index) {
        return SeeAllSpecializationsItem(specializationData: specializationsDataList![index]!);
      },
    );
  }
}
