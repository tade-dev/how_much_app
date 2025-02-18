import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:how_much_app/core/app.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  
  configureDependencies();

  si.registerLazySingleton(() => AppRouter());

  await dotenv.load(fileName: '.env');

  runApp(const HowMuchApp());
  
}