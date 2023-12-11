import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/fade_in_%20animation_model.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/splash_screen_controller.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    super.key,
    required this.durationInMs, this.animation, required this.child
  });
  final splashController = Get.put(FadeInAnimationController());
  final int durationInMs;
  final AnimatePosition? animation;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
          duration: Duration(milliseconds: durationInMs),
          top:  splashController.animate.value ? animation!.topAfter : animation!.topBefore,
          left: splashController.animate.value ? animation!.topAfter : animation!.topBefore,
          child: AnimatedOpacity(duration: Duration(milliseconds: durationInMs),
          opacity: splashController.animate.value ? 1:0,
          child: child,)),
    );
  }
}

