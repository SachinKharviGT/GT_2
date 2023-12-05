import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:gt_2/src/utils/theme/theme.dart';

import 'HomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: GT_Theme.dartTheme,
      theme: GT_Theme.lightTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}