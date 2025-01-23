import 'package:flutter/material.dart';
import 'package:how_much_app/core/app.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  si.registerLazySingleton(() => AppRouter());

  runApp(const HowMuchApp());
  
}