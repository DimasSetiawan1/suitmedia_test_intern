part of 'component.dart';

class SuitMediaTestApp extends StatelessWidget {
  final _routerConfig = RouterConfigApp();
  final _getUserDatasource = GetUserDatasource();
  SuitMediaTestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PalindromeValidationBloc>(
          create: (context) => PalindromeValidationBloc(),
        ),
        BlocProvider<UserNameBloc>(create: (context) => UserNameBloc()),
        BlocProvider<UserListBloc>(
          create: (context) =>
              UserListBloc(getUserDatasource: _getUserDatasource),
        ),
      ],
      child: MaterialApp.router(
        title: 'SuitMedia Test App',
        routeInformationParser: _routerConfig.route.routeInformationParser,
        routerDelegate: _routerConfig.route.routerDelegate,
        routeInformationProvider: _routerConfig.route.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
