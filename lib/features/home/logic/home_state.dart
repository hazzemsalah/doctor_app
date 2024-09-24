import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // soecializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(SpecializationsResponseModel specializationsResoponseModel) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) = SpecializationsError;
}
