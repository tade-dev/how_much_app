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
import 'package:how_much_app/features/auth/cubit/forgotpassword/forgot_password_cubit.dart'
    as _i15;
import 'package:how_much_app/features/auth/cubit/login/login_cubit.dart'
    as _i16;
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart'
    as _i18;
import 'package:how_much_app/features/auth/cubit/verification/verifcation_cubit.dart'
    as _i19;
import 'package:how_much_app/features/auth/data/datasource/auth_s.dart' as _i6;
import 'package:how_much_app/features/auth/data/datasource/auth_services.dart'
    as _i5;
import 'package:how_much_app/features/auth/data/repository/auth_impl.dart'
    as _i10;
import 'package:how_much_app/features/auth/domain/repositories/auth_r.dart'
    as _i9;
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart' as _i11;
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart' as _i17;
import 'package:how_much_app/features/profile/data/datasource/profile_s.dart'
    as _i8;
import 'package:how_much_app/features/profile/data/datasource/profile_service.dart'
    as _i7;
import 'package:how_much_app/features/profile/data/repository/profile_impl.dart'
    as _i13;
import 'package:how_much_app/features/profile/domain/repositories/profile_r.dart'
    as _i12;
import 'package:how_much_app/features/profile/domain/usecase/profile_u.dart'
    as _i14;
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
    gh.factory<_i7.ProfileService>(
      () => _i8.ProfileSource(api: gh<_i4.Api>()),
      instanceName: 'profilesource',
    );
    gh.factory<_i9.AuthRepository>(
      () => _i10.AuthImpl(gh<_i5.AuthServices>(instanceName: 'authsource')),
      instanceName: 'AuthRepository',
    );
    gh.factory<_i11.ForgotPasswordUseCase>(() => _i11.ForgotPasswordUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i11.LoginUserUseCase>(() => _i11.LoginUserUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i12.ProfileRepository>(
      () => _i13.ProfileImpl(
          gh<_i7.ProfileService>(instanceName: 'profilesource')),
      instanceName: 'ProfileRepository',
    );
    gh.factory<_i11.RegisterUserUseCase>(() => _i11.RegisterUserUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i11.ResendCodeUseCase>(() => _i11.ResendCodeUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i11.ResetPasswordUseCase>(() => _i11.ResetPasswordUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.SetProfileUsecase>(() => _i14.SetProfileUsecase(
        gh<_i12.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i11.UpdatePasswordUseCase>(() => _i11.UpdatePasswordUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.UploadImageUsecase>(() => _i14.UploadImageUsecase(
        gh<_i12.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i11.VerifyEmailUseCase>(() => _i11.VerifyEmailUseCase(
        gh<_i9.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.DeleteAccountUsecase>(() => _i14.DeleteAccountUsecase(
        gh<_i12.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i15.ForgotPasswordCubit>(() => _i15.ForgotPasswordCubit(
          gh<_i11.ForgotPasswordUseCase>(),
          gh<_i11.ResetPasswordUseCase>(),
          gh<_i11.UpdatePasswordUseCase>(),
        ));
    gh.factory<_i14.GetProfileUsecase>(() => _i14.GetProfileUsecase(
        gh<_i12.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i16.LoginCubit>(
        () => _i16.LoginCubit(gh<_i11.LoginUserUseCase>()));
    gh.factory<_i17.ProfileCubit>(() => _i17.ProfileCubit(
          gh<_i14.DeleteAccountUsecase>(),
          gh<_i14.UploadImageUsecase>(),
          gh<_i14.GetProfileUsecase>(),
          gh<_i14.SetProfileUsecase>(),
        ));
    gh.factory<_i18.RegisterCubit>(
        () => _i18.RegisterCubit(gh<_i11.RegisterUserUseCase>()));
    gh.factory<_i19.VerifcationCubit>(
        () => _i19.VerifcationCubit(gh<_i11.VerifyEmailUseCase>()));
    return this;
  }
}
