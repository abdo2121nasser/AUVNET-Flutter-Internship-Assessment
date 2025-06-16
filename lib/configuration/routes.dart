

import 'package:go_router/go_router.dart';

class AppRoute {
  static const authenticationScreen = '/authentication-screen';
  static const forgetPasswordScreen = '/forget-password-screen';
  static const homeScreen = '/home-screen';
  static const profileScreen = '/profile-screen';
  static const settingScreen = '/setting-screen';
  static const guideScreen = '/guide-screen';

  static final router = GoRouter(
      // initialLocation:
      routes: [
        // GoRoute(
        //   path: authenticationScreen,
        //   builder: (context, state) => AuthenticationScreen(),
        // ),

      ]
  );
}
