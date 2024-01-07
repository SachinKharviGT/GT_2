import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:gt_2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(CupertinoIcons.person),
              border: OutlineInputBorder(),
              hintText: Text_Strings.email
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(CupertinoIcons.lock),
              border: OutlineInputBorder(),
              hintText: Text_Strings.password,
              suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(CupertinoIcons.eye)
              )

          ),
        ),
        SizedBox(height: 40),
        Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: (){
              ForgetPasswordScreen.buildShowModalBottomSheet(context);
            },
            child: Text(Text_Strings.forget_password,),
          ),
        ),
        SizedBox(
            width: screenSize.width -40,
            child: ElevatedButton(onPressed: (){}, child: Text(Text_Strings.login)))
      ],
    ));
  }

}

