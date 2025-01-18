import 'package:get_it/get_it.dart';
import 'package:how_much_app/core/di/injectable.config.dart';
import 'package:injectable/injectable.dart';

final GetIt si = GetIt.instance;

@InjectableInit()
void configureDependencies()=> si.init();