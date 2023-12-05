

import 'package:get/get.dart';
import 'package:gt_2/HomePage.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;


  Future starAnimation () async {
    await  Future.delayed(Duration(milliseconds: 500));
      animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(HomePage());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }


}