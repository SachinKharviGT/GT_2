import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:gt_2/HomePage.dart';
import 'package:gt_2/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.starAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
                () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1300),
                top:  splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                child: Icon(Icons.connecting_airports_sharp,size: 100,)),
          ),
          Obx(
            ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1300),
                top: 40,
                left: splashController.animate.value ? 0 : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1300),
                  opacity: splashController.animate.value ? 1: 0,
                  child: Column(
                    children: [
                      Text("hello"),
                    ],
                  ),
                )),
          ),
          Obx(
            ()=> AnimatedPositioned(
                duration: const Duration(milliseconds: 1300),
                top: 80,
                left: 0,
                child: Icon(Icons.dashboard_customize,size: 50,)),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1300),
                bottom: 50,
                left: 0,
                child: Icon(Icons.dashboard_customize,size: 50,)),
          )
        ],
      ),
    );
  }





}

