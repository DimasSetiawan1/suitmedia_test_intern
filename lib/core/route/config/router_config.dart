import 'package:go_router/go_router.dart';
import 'package:suitmedia_test/core/route/app_route.dart';
import 'package:suitmedia_test/persentation/first_screen/pages/first_screen.dart';
import 'package:suitmedia_test/persentation/second_screen/pages/second_screen.dart';
import 'package:suitmedia_test/persentation/third_screen/pages/third_screen.dart';

class RouterConfigApp {
  late final GoRouter _route;

  RouterConfigApp() {
    _route = GoRouter(
      initialLocation: AppRoute.firstScreen.path,
      routes: [
        /*
          First Screen
        */
        GoRoute(
          path: AppRoute.firstScreen.path,
          name: AppRoute.firstScreen.name,
          builder: (context, state) => FirstScreen(),
        ),
        /*
          Second Screen
        */
        GoRoute(
          path: AppRoute.secondScreen.path,
          name: AppRoute.secondScreen.name,
          builder: (context, state) => SecondScreen(),
        ),

        /*
          Third Screen
        */
        GoRoute(
          path: AppRoute.thirdScreen.path,
          name: AppRoute.thirdScreen.name,
          builder: (context, state) => const ThirdScreen(),
        ),
      ],
    );
  }

  GoRouter get route => _route;
}
