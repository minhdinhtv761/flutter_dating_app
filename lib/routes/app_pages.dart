import 'package:flutter_dating_app/modules/auth/auth.dart';
import 'package:flutter_dating_app/modules/home/home.dart';
import 'package:flutter_dating_app/modules/me/cards/cards_screen.dart';
import 'package:flutter_dating_app/modules/modules.dart';
import 'package:get/get.dart';

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
