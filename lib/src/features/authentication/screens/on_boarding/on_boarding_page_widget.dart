import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/models/on_boarding_models.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    var ScreenSize = MediaQuery.of(context).size;
    return Container(
      width: ScreenSize.width,
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),),
         // Image.asset("assets/images/image1.jpg"),
         // Text(Text_Strings.apple,style: Theme.of(context).textTheme.headline2,)
        ],
      ),
    );
  }
}
