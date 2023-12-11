import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:gt_2/HomePage.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/fade_in_%20animation_model.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final splashController = Get.put(FadeInAnimationController());
    splashController.starSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(durationInMs: 1600,
            animation: AnimatePosition(
              topAfter: 0,topBefore: -30, leftBefore: -30,leftAfter:  0,
            ),
            child: Text("hello",style: Theme.of(context).textTheme.headline4,),

          ),
          FadeInAnimation(durationInMs: 2000, child: Text("fdfdf"),
            animation: AnimatePosition(
            topBefore: 80,topAfter: 80,leftAfter: 30,rightAfter: 34,rightBefore: 34,leftBefore: 33
          ),
          )

        ],
      ),
    );
  }
}

