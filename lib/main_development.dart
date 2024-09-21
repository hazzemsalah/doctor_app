import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routes/app_router.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // to fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(appRouter: AppRouter()));
}
