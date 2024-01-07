import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/firebase_options.dart';
import 'package:gt_2/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:gt_2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:gt_2/src/utils/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
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
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: CircularProgressIndicator(),
    );
  }
}