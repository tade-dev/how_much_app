import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/core/services/theme_services.dart';
import 'package:how_much_app/features/auth/cubit/auth_cubit.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';


class HowMuchApp extends StatefulWidget {
  const HowMuchApp({super.key});

  @override
  State<HowMuchApp> createState() => _HowMuchAppState();
}

class _HowMuchAppState extends State<HowMuchApp> {

  late AppRouter appRouter;
  late AuthCubit authCubit;

  @override
  void initState() {
    appRouter = si<AppRouter>();
    authCubit = si<AuthCubit>();
    super.initState();
  }

  @override
  void dispose() {
    authCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp.router(
        title: 'How Much App',
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
      ),
    );
  }

  List<SingleChildWidget> get providers {
    return [
      BlocProvider<AuthCubit>.value(value: authCubit)
    ];
  }

}