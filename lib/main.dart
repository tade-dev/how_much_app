import 'package:flutter/material.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/core/services/theme_services.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  si.registerLazySingleton(() => AppRouter());

  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appRouter = si<AppRouter>();
    return MaterialApp.router(
      title: 'How Much App',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
    );
  }
}
