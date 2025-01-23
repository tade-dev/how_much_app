// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:how_much_app/core/api/api.dart' as _i4;
import 'package:how_much_app/core/routes/routes.dart' as _i3;
import 'package:how_much_app/features/auth/cubit/auth_cubit.dart' as _i10;
import 'package:how_much_app/features/auth/data/datasource/auth_s.dart' as _i6;
import 'package:how_much_app/features/auth/data/datasource/auth_services.dart'
    as _i5;
import 'package:how_much_app/features/auth/data/repository/auth_impl.dart'
    as _i8;
import 'package:how_much_app/features/auth/domain/repositories/auth_r.dart'
    as _i7;
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.$AppRouter>(() => _i3.$AppRouter());
    gh.lazySingleton<_i4.Api>(() => _i4.Api());
    gh.factory<_i5.AuthServices>(
      () => _i6.AuthSource(api: gh<_i4.Api>()),
      instanceName: 'authsource',
    );
    gh.factory<_i7.AuthRepository>(
      () => _i8.AuthImpl(gh<_i5.AuthServices>(instanceName: 'authsource')),
      instanceName: 'AuthRepository',
    );
    gh.factory<_i9.ForgotPasswordUseCase>(() => _i9.ForgotPasswordUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.LoginUserUseCase>(() => _i9.LoginUserUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.RegisterUserUseCase>(() => _i9.RegisterUserUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.ResendCodeUseCase>(() => _i9.ResendCodeUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.ResetPasswordUseCase>(() => _i9.ResetPasswordUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.UpdatePasswordUseCase>(() => _i9.UpdatePasswordUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i9.VerifyEmailUseCase>(() => _i9.VerifyEmailUseCase(
        gh<_i7.AuthRepository>(instanceName: 'AuthRepository')));
    gh.lazySingleton<_i10.AuthCubit>(() => _i10.AuthCubit(
          gh<_i9.ForgotPasswordUseCase>(),
          gh<_i9.LoginUserUseCase>(),
          gh<_i9.RegisterUserUseCase>(),
          gh<_i9.VerifyEmailUseCase>(),
          gh<_i9.UpdatePasswordUseCase>(),
          gh<_i9.ResetPasswordUseCase>(),
        ));
    return this;
  }
}
