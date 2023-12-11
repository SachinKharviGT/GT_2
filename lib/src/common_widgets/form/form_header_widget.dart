import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.title,
  required this.sub_title,
  required this.image,

});

  final String title,sub_title,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(image)),
        Text(title, style: Theme
            .of(context)
            .textTheme
            .headline3,),
        Text(sub_title, style: Theme
            .of(context)
            .textTheme
            .headline6,),
      ],
    );
  }
}