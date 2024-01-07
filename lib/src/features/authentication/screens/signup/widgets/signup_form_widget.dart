import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/controllers/signup_controller/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      child: Form(
        key: _formKey,
          child: Column(
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: InputDecoration(
                label: Text(Text_Strings.signup_fullname),
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextFormField(
            controller: controller.phoneNo,
            decoration: InputDecoration(
                label: Text(Text_Strings.mobile_number),
                prefixIcon: Icon(Icons.phone)
            ),
          ),TextFormField(
            controller: controller.email,
            decoration: InputDecoration(
                label: Text(Text_Strings.email),
                prefixIcon: Icon(Icons.email)
            ),
          ),
          TextFormField(
            controller: controller.password,
            decoration: InputDecoration(
                label: Text(Text_Strings.password),
                prefixIcon: Icon(Icons.key)
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                }
              },
              child: Text(Text_Strings.signin),
            ),
          )
        ],
      )),
    );
  }
}
