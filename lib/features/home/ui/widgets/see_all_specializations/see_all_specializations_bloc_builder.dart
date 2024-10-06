import 'package:doctor_app/features/home/ui/widgets/see_all_specializations/see_all_specializations_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/see_all_specializations/see_all_specializations_list_view.dart';

class SeeAllSpecializationsBlocBuilder extends StatelessWidget {
  const SeeAllSpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationDataList) {
            return SeeAllSpecializationsListView(
              specializationsDataList: specializationDataList ?? [],
            );
          },
          specializationsError: (errorHandler) => const Center(
            child: Text('Failed to load specializations'),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  /// Shimmer loading for the grid layout
  Widget setupLoading() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1, 
        crossAxisSpacing: 8.0, 
        mainAxisSpacing: 8.0, 
      ),
      itemCount: 10, // Number of shimmer items to display
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        return const SeeAllSpecializationsGridShimmerLoading(); // Use the new shimmer widget here
      },
    );
  }
}
