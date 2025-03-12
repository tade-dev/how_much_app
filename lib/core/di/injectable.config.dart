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
    as _i20;
import 'package:how_much_app/features/auth/cubit/login/login_cubit.dart'
    as _i22;
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart'
    as _i24;
import 'package:how_much_app/features/auth/cubit/verification/verifcation_cubit.dart'
    as _i25;
import 'package:how_much_app/features/auth/data/datasource/auth_s.dart' as _i6;
import 'package:how_much_app/features/auth/data/datasource/auth_services.dart'
    as _i5;
import 'package:how_much_app/features/auth/data/repository/auth_impl.dart'
    as _i13;
import 'package:how_much_app/features/auth/domain/repositories/auth_r.dart'
    as _i12;
import 'package:how_much_app/features/auth/domain/usecases/auth_u.dart' as _i14;
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart' as _i23;
import 'package:how_much_app/features/profile/data/datasource/profile_s.dart'
    as _i11;
import 'package:how_much_app/features/profile/data/datasource/profile_service.dart'
    as _i10;
import 'package:how_much_app/features/profile/data/repository/profile_impl.dart'
    as _i18;
import 'package:how_much_app/features/profile/domain/repositories/profile_r.dart'
    as _i17;
import 'package:how_much_app/features/profile/domain/usecase/profile_u.dart'
    as _i19;
import 'package:how_much_app/features/proposals/cubit/pricing_cubit.dart'
    as _i7;
import 'package:how_much_app/features/proposals/data/datasource/pricing_s.dart'
    as _i9;
import 'package:how_much_app/features/proposals/data/datasource/pricing_service.dart'
    as _i8;
import 'package:how_much_app/features/proposals/data/repository/pricing_impl.dart'
    as _i16;
import 'package:how_much_app/features/proposals/domain/repositories/pricing_r.dart'
    as _i15;
import 'package:how_much_app/features/proposals/domain/usecases/pricing_u.dart'
    as _i21;
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
    gh.factory<_i7.PricingCubit>(() => _i7.PricingCubit());
    gh.factory<_i8.PricingService>(
      () => _i9.PricingSource(api: gh<_i4.Api>()),
      instanceName: 'pricingsource',
    );
    gh.factory<_i10.ProfileService>(
      () => _i11.ProfileSource(api: gh<_i4.Api>()),
      instanceName: 'profilesource',
    );
    gh.factory<_i12.AuthRepository>(
      () => _i13.AuthImpl(gh<_i5.AuthServices>(instanceName: 'authsource')),
      instanceName: 'AuthRepository',
    );
    gh.factory<_i14.ForgotPasswordUseCase>(() => _i14.ForgotPasswordUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.LoginUserUseCase>(() => _i14.LoginUserUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i15.PricingRepository>(
      () => _i16.PricingImpl(
          gh<_i8.PricingService>(instanceName: 'pricingsource')),
      instanceName: 'PricingRepository',
    );
    gh.factory<_i17.ProfileRepository>(
      () => _i18.ProfileImpl(
          gh<_i10.ProfileService>(instanceName: 'profilesource')),
      instanceName: 'ProfileRepository',
    );
    gh.factory<_i14.RegisterUserUseCase>(() => _i14.RegisterUserUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.ResendCodeUseCase>(() => _i14.ResendCodeUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i14.ResetPasswordUseCase>(() => _i14.ResetPasswordUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i19.SetProfileUsecase>(() => _i19.SetProfileUsecase(
        gh<_i17.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i14.UpdatePasswordUseCase>(() => _i14.UpdatePasswordUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i19.UploadImageUsecase>(() => _i19.UploadImageUsecase(
        gh<_i17.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i14.VerifyEmailUseCase>(() => _i14.VerifyEmailUseCase(
        gh<_i12.AuthRepository>(instanceName: 'AuthRepository')));
    gh.factory<_i19.DeleteAccountUsecase>(() => _i19.DeleteAccountUsecase(
        gh<_i17.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i20.ForgotPasswordCubit>(() => _i20.ForgotPasswordCubit(
          gh<_i14.ForgotPasswordUseCase>(),
          gh<_i14.ResetPasswordUseCase>(),
          gh<_i14.UpdatePasswordUseCase>(),
        ));
    gh.factory<_i21.GeneratePricingUsecase>(() => _i21.GeneratePricingUsecase(
        gh<_i15.PricingRepository>(instanceName: 'PricingRepository')));
    gh.factory<_i21.GetAllPricingUsecase>(() => _i21.GetAllPricingUsecase(
        gh<_i15.PricingRepository>(instanceName: 'PricingRepository')));
    gh.factory<_i19.GetProfileUsecase>(() => _i19.GetProfileUsecase(
        gh<_i17.ProfileRepository>(instanceName: 'ProfileRepository')));
    gh.factory<_i22.LoginCubit>(
        () => _i22.LoginCubit(gh<_i14.LoginUserUseCase>()));
    gh.factory<_i23.ProfileCubit>(() => _i23.ProfileCubit(
          gh<_i19.DeleteAccountUsecase>(),
          gh<_i19.UploadImageUsecase>(),
          gh<_i19.GetProfileUsecase>(),
          gh<_i19.SetProfileUsecase>(),
        ));
    gh.factory<_i24.RegisterCubit>(
        () => _i24.RegisterCubit(gh<_i14.RegisterUserUseCase>()));
    gh.factory<_i25.VerifcationCubit>(
        () => _i25.VerifcationCubit(gh<_i14.VerifyEmailUseCase>()));
    return this;
  }
}
