import 'package:dartz/dartz.dart';
import 'package:how_much_app/core/entites/app_error.dart';
import 'package:injectable/injectable.dart';


@factoryMethod
abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
