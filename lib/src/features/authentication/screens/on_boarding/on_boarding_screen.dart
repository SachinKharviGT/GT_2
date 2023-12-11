import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:gt_2/src/features/authentication/models/on_boarding_models.dart';
import 'package:gt_2/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:gt_2/src/utils/theme/widget_theme/text_theme.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery
        .of(context)
        .size;

    final controller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            slideIconWidget: Icon(Icons.arrow_back),
            enableSideReveal: true,
            pages: controller.page,
            liquidController: controller.controller,
            onPageChangeCallback: controller.onPageChangedCallBack, 
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed:() => controller.animatedToNexrSlide(),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    onPrimary: Colors.white
                ), child: Container(child: Icon(Icons.arrow_forward),),
              )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => controller.skip(),
                child: Text("Skip"),
              )),
          Obx(() => Positioned(child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage.value ,
              count: 2,
              effect: WormEffect(
                  activeDotColor: Colors.black,
                  dotHeight: 5
              ),
            )),
          )
        ],
      ),
    );
  }

}

