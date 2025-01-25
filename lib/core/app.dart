import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_much_app/core/di/injectable.dart';
import 'package:how_much_app/core/routes/routes.gr.dart';
import 'package:how_much_app/core/services/theme_services.dart';
import 'package:how_much_app/features/auth/cubit/forgotpassword/forgot_password_cubit.dart';
import 'package:how_much_app/features/auth/cubit/login/login_cubit.dart';
import 'package:how_much_app/features/auth/cubit/register/register_cubit.dart';
import 'package:how_much_app/features/auth/cubit/verification/verifcation_cubit.dart';
import 'package:how_much_app/features/profile/cubit/profile_cubit.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';


class HowMuchApp extends StatefulWidget {
  const HowMuchApp({super.key});

  @override
  State<HowMuchApp> createState() => _HowMuchAppState();
}

class _HowMuchAppState extends State<HowMuchApp> {

  late AppRouter appRouter;
  late LoginCubit loginCubit;
  late ForgotPasswordCubit forgotPasswordCubit;
  late RegisterCubit registerCubit;
  late VerifcationCubit verifcationCubit;
  late ProfileCubit profileCubit;

  @override
  void initState() {
    appRouter = si<AppRouter>();
    loginCubit = si<LoginCubit>();
    forgotPasswordCubit = si<ForgotPasswordCubit>();
    registerCubit = si<RegisterCubit>();
    verifcationCubit = si<VerifcationCubit>();
    profileCubit = si<ProfileCubit>();
    super.initState();
  }

  @override
  void dispose() {
    loginCubit.close();
    registerCubit.close();
    forgotPasswordCubit.close();
    verifcationCubit.close();
    profileCubit.close();
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
        builder: (context, child) => Overlay(initialEntries: [
          OverlayEntry(builder: (context) {
            return Stack(children: [
              MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                      systemGestureInsets:
                          const EdgeInsets.all(400),
                      navigationMode:
                          NavigationMode.directional,
                      textScaler:
                          const TextScaler.linear(1.00)),
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    resizeToAvoidBottomInset: true,
                    body: child
                  )
                ),
            ]);
          })
        ]
      ),
      ),
    );
  }

  List<SingleChildWidget> get providers {
    return [
      BlocProvider<LoginCubit>.value(value: loginCubit),
      BlocProvider<RegisterCubit>.value(value: registerCubit),
      BlocProvider<ForgotPasswordCubit>.value(value: forgotPasswordCubit),
      BlocProvider<VerifcationCubit>.value(value: verifcationCubit),
      BlocProvider<ProfileCubit>.value(value: profileCubit),
    ];
  }

}