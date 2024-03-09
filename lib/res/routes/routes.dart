import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/views/home_screen.dart';
import 'package:getx_mvvm/views/login/login_view.dart';
import 'package:getx_mvvm/views/splash_screen2.dart';

class AppRoutes {
  //adding routes navigation
  static appRoutes() => [
        GetPage(
          page: () => const SplashScreen2(),
          name: RouteName.splashScreen2,
          transition: Transition.downToUp,
          transitionDuration: const Duration(seconds: 2),
        ),
        GetPage(
          page: () => const HomeSreen(),
          name: RouteName.homeScreen,
          transition: Transition.downToUp,
          transitionDuration: const Duration(seconds: 1),
        ),
        GetPage(
          page: () => const LoginView(),
          name: RouteName.loginView,
          transition: Transition.downToUp,
          transitionDuration: const Duration(seconds: 1),
        ),
      ];
}
