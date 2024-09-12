import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routes/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DoctorApp(appRouter: AppRouter()));
}
