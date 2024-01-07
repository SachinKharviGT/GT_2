import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:gt_2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context, builder: (context) =>
        Container(
          height: 500,
          child: Column(
            children: [
              Text(Text_Strings.make_selection,style: Theme.of(context).textTheme.headline4,),
              SizedBox(height: 30,),
              ForgetPasswordBtnWidget(
                title: Text_Strings.email,
                subTitle: Text_Strings.reset_email,
                btnIcon: Icons.email,
                ontap: () {
                  Navigator.pop(context);
                  Get.to(()=> ForgetPasswordMailScreen());
                },
              ),
              SizedBox(height: 30,),
              ForgetPasswordBtnWidget(
                title: Text_Strings.phone,
                subTitle: Text_Strings.reset_phone,
                btnIcon: Icons.phone_android,
                ontap: (){},
              )
            ],
          ),
        )
    );
  }
}