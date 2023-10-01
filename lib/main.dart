import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

import 'bloc_observer.dart';
import 'core/constants/constants.dart';
import 'core/localization/localization.dart';
import 'core/router/router.dart';
import 'core/theme/theme.dart';
import 'injectable.dart';
import 'presentation/cubits/directionality/directionality_cubits.dart';
import 'presentation/cubits/forgot_password/forgot_password_cubits.dart';
import 'presentation/cubits/login/login_cubits.dart';
import 'presentation/cubits/return/return_cubits.dart';
import 'presentation/cubits/sign_up/sign_up_cubits.dart';
import 'presentation/cubits/theme/theme_cubits.dart';

/*
 Cubit is a variation of the Bloc (business logic component) pattern that has a simpler API and
 a more intuitive way of representing state changes. Like the Bloc pattern, the Cubit pattern
 separates the business logic of an app from its user interface (UI) and allows developers to
 build reusable and testable business logic that can be shared across multiple UI elements.

RepositoryProvider: API calling, Use case defines
Cubit: BlocBuilder, BlocSelector, BlocConsumer, BlocListener, context.read,  context.watch, BlocProvider, MultiBlocProvider

extend cubit:
- We need to build a class that extends Cubit. Cubit itself takes state.
- The current state of a Cubit can be accessed via the state getter or state keyword.
- You need to initialize a state using super() during cubit initialization.

injectable
- as: if you are injecting something that has an abstract class, in case that you do not
      have use @singleton or @injectable … This is valid for all annotations!

form.currentState?.validate() == true

cubit inside widget controller

controller: ListUserCubit.controller,
*/

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await GetStorage.init();
  await dotenv.load();
  configure();

  EndPointConstant().init();

  Bloc.observer = AppBlocObserver();

  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => getIt<ThemeCubit>()),
    BlocProvider(create: (_) => getIt<DirectionalityCubit>()),
    BlocProvider(create: (_) => getIt<LoginCubit>()),
    BlocProvider(create: (_) => getIt<SignUpCubit>()),
    BlocProvider(create: (_) => getIt<ForgotPasswordCubit>()),
    BlocProvider(create: (_) => getIt<ReturnCubit>()),

    //BlocProvider(create: (_) => getIt<SplashCubit>()..isAuthenticatedUserCheck()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

/*
  @override
  void initState() {
    super.initState();
    ThemeDetector.init(context);
  }
*/

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      designSize: const Size(1080, 1920),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => Builder(builder: (context) {
            return BlocBuilder<ThemeCubit, ThemeState>(
                buildWhen: (previous, current) => previous != current,
                builder: (_, themeState) => MaterialApp.router(
                    //routerDelegate: locator<GoRouter>().routerDelegate,
                    //routeInformationParser: locator<GoRouter>().routeInformationParser,
                    //routeInformationProvider: goRouter.routeInformationProvider,

                    localizationsDelegates: const [
                      Strings.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],

                    locale: const Locale('en'),
                    supportedLocales: L10n.all,

                    debugShowCheckedModeBanner: false,
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme,

                    //THEME CHANGE
                    themeMode: themeState.themeMode,

                    routerConfig: goRouter));
          }));
}
