import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/theme/theme.dart';
import 'package:pits_app/core/data/interceptors/auth_interceptor.dart';
import 'package:pits_app/core/data/singletons/service_locator.dart';
import 'package:pits_app/modules/auth/presentation/sections/splash/splash_screen.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/bloc/profile_bloc.dart';
import 'utils/AppScrollBehavior.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  await setupLocator();
  //runApp(const MyApp());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
        BlocProvider<ActivityBloc>(create: (context) => ActivityBloc()),
        BlocProvider<ProfileBloc>(create: (context) => ProfileBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pits',
      navigatorKey: AuthInterceptor.navigatorKey,
      theme: AppTheme.theme(),
      scrollBehavior:
          AppScrollBehavior(), //web view page scroll. remove if need
      home: const SplashScreen(),
    );
  }
}
