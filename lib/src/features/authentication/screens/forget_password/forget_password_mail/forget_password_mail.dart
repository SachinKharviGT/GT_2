import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:gt_2/src/common_widgets/form/form_header_widget.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            FormHeaderWidget(title: Text_Strings.forget_password,
                sub_title: Text_Strings.reset_email,
                image: images.googleimage),
            SizedBox(height: 30),
            Form(child:
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text(Text_Strings.e_mail),
                    hintText: Text_Strings.e_mail,
                    prefixIcon: Icon(Icons.email)

                  ),
                )
              ],
            )),
            SizedBox(
              width: 500,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(() => OTPScreen());
                },
                child: Text(Text_Strings.nextTxt),
              ),
            )

          ],
        ),

      )
    );

  }
}
