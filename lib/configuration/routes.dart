

import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/screens/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const welcomeScreen = '/welcome-screen';
  static const signInScreen = '/sing-in-screen';


  static final router = GoRouter(
      initialLocation:welcomeScreen,
      routes: [
        GoRoute(
          path: welcomeScreen,
          builder: (context, state) => WelcomeScreen(),
        ),GoRoute(
          path: signInScreen,
          builder: (context, state) => WelcomeScreen(),
        ),

      ]
  );
}
