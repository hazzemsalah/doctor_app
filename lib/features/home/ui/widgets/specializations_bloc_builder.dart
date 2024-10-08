import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doctor_app/features/home/ui/widgets/speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            var specializationsList = specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const Padding(
      padding: EdgeInsets.only(top: 200),
      child: Center(
        child: SizedBox(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return 
        SpecialityListView(
          specializationsDataList: specializationsList ?? [],
       
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
