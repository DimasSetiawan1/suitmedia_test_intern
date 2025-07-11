enum AppRoute {
  firstScreen,
  secondScreen,
  thirdScreen,
}

extension AppRouteExtension on AppRoute {
  String get path {
    switch (this) {
      case AppRoute.firstScreen:
        return '/first';
      case AppRoute.secondScreen:
        return '/second';
      case AppRoute.thirdScreen:
        return '/third';
    }
  }
}