import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: Text(Text_Strings.signup_fullname),
                prefixIcon: Icon(Icons.person)
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text(Text_Strings.mobile_number),
                prefixIcon: Icon(Icons.phone)
            ),
          ),TextFormField(
            decoration: InputDecoration(
                label: Text(Text_Strings.email),
                prefixIcon: Icon(Icons.email)
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: (){},
              child: Text(Text_Strings.signin),
            ),
          )
        ],
      )),
    );
  }
}
