import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routes/routes.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/ui/screens/home_screen.dart';
import 'package:doctor_app/features/home/ui/screens/see_all_specializatios_screen.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/forgot_password_screen.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const ForgotPasswordScreen(),
          ),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecializations(),
              ),
              BlocProvider(
                create: (context) => SignupCubit(getIt())..nameController,
              )
            ],
            child: const HomeScreen(),
          ),
        );

      case Routes.seeAllSpecializatiosScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const SeeAllSpecializationsScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
