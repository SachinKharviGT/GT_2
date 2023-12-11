import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/features/authentication/models/on_boarding_models.dart';
import 'package:gt_2/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnBoardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs; //when value change it will update all page

  final page = [
    //work only when same ui design
    OnBoardingPageWidget(model: OnBoardingModel(image: images.googleimage,
        title: "",
        subTitle: "hello",
        counterText: "",
        bgColor: Colors.cyan,
        )),
    OnBoardingPageWidget(model: OnBoardingModel(image: images.image1,
        title: "",
        subTitle: "hello",
        counterText: "",
        bgColor: Colors.amber,
    )),
  ];

  void onPageChangedCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
  skip() => controller.jumpToPage(page: 2);

  animatedToNexrSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}