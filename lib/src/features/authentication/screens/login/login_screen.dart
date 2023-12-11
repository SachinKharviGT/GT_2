import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/image_string.dart';
import 'package:gt_2/src/constants/text_strings.dart';
import 'package:gt_2/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:gt_2/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:gt_2/src/features/authentication/screens/login/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize  = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            width: screenSize.width -20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoginHeaderWidget(),
                LoginFormWidget(screenSize: screenSize),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

