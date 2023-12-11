import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(images.googleimage)),
        Text(Text_Strings.Welcome, style: Theme
            .of(context)
            .textTheme
            .headline3,),
        Text(Text_Strings.loginContent, style: Theme
            .of(context)
            .textTheme
            .headline6,),
      ],
    );
  }
}