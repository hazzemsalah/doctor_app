import 'package:flutter/material.dart';
import 'package:doctor_app/features/home/ui/widgets/see_all_specializations/see_all_specializations_bloc_builder.dart';

class SeeAllSpecializationsScreen extends StatelessWidget {
  const SeeAllSpecializationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Specializations'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SeeAllSpecializationsBlocBuilder(),
      ),
    );
  }
}
