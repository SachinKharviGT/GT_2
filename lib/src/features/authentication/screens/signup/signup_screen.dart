import 'package:flutter/material.dart';
import 'package:gt_2/src/common_widgets/form/form_header_widget.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                FormHeaderWidget(title: Text_Strings.go_onboarding, sub_title: Text_Strings.signup_title, image: images.googleimage),
                SignUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    OutlinedButton.icon(
                        icon: Icon(Icons.fmd_good),
                        onPressed: (){},
                        label: Text(Text_Strings.signup_with_google)),
                    SizedBox(height: 40),
                    TextButton(onPressed: (){}, child:
                    Text.rich(
                        TextSpan(
                            text: Text_Strings.dont_have_account,
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                text: Text_Strings.login,
                              )
                            ]
                        )
                    ))
                  ],
                )
            ],),
          ),

        ],
      ),
    );
  }
}

