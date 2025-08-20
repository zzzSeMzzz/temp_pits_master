import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pits_app/assets/theme/theme.dart';
import 'package:pits_app/core/data/singletons/service_locator.dart';
import 'package:pits_app/modules/auth/presentation/sections/splash/splash_screen.dart';
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
      statusBarBrightness: Brightness.light
    ),
  );
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pits',
        theme: AppTheme.theme(),
        scrollBehavior:
            AppScrollBehavior(), //web view page scroll. remove if need
        home: const SplashScreen());
  }
}
