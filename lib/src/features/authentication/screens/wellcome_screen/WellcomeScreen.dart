import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/fade_in_%20animation_model.dart';
import 'package:gt_2/src/common_widgets/fade_in_animation/splash_screen_controller.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/login/login_screen.dart';
import 'package:gt_2/src/features/authentication/screens/signup/signup_screen.dart';

class WellComeScreen extends StatelessWidget {
  WellComeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.starAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(durationInMs: 1200,
              animation: AnimatePosition(
                buttonAfter: 0,buttonBefore: -100,
                leftBefore: 0,leftAfter: 0,
                rightBefore: 0,rightAfter: 0
              ),
              child:  Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage(images.image1)),
                    Text(Text_Strings.wellComeTXT,style: Theme.of(context).textTheme.headline4,),
                    Text(Text_Strings.wellcome_title,style: Theme.of(context).textTheme.headline6,),
                    Text(Text_Strings.wellcome_content,style: Theme.of(context).textTheme.bodySmall,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(onPressed: () => Get.to(LoginScreen()),
                            child: Text(Text_Strings.login)),
                        ElevatedButton(onPressed: () => Get.to(SignUpScreen()),
                            child: Text(Text_Strings.signin))
                      ],
                    )
                  ],
                ),
              ),
          )

        ],
      ),
    );
  }
}
