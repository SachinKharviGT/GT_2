

import 'package:get/get.dart';
import 'package:gt_2/HomePage.dart';
import 'package:gt_2/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:gt_2/src/features/authentication/screens/wellcome_screen/WellcomeScreen.dart';
import 'package:gt_2/src/features/core/screen/dashboard/dashboard.dart';

class FadeInAnimationController extends GetxController{

  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;


  Future starSplashAnimation () async {
    await  Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    //Get.offAll(() => WellComeScreen());
    Get.offAll(() => WellComeScreen());

    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
  Future starAnimation () async {
    await  Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }


}