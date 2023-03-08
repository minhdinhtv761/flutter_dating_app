// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../modules/auth/auth.dart';
import '../modules/home/home.dart';
import '../modules/me/cards/cards_screen.dart';
import '../modules/modules.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.auth,
      page: () => AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.register, page: () => RegisterScreen()),
        GetPage(name: Routes.login, page: () => LoginScreen()),
      ],
    ),
    GetPage(
        name: Routes.home,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.history, page: () => CardsScreen()),
        ]),
  ];
}
