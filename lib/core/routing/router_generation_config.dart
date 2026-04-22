import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/create_new_password_screen.dart';
import 'package:finance_ui/features/auth/forget_password.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/auth/password_changed.dart';
import 'package:finance_ui/features/auth/register_screen.dart';
import 'package:finance_ui/features/on%20boarding%20screen/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),

      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),

      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgetPassword(),
      ),

      GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),

      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => const PasswordChanged(),
      ),
    ]
  );
}