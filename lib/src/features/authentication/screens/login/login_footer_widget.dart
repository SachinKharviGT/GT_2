import 'package:flutter/material.dart';
import 'package:gt_2/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OR"),
        OutlinedButton.icon(
            icon: Icon(Icons.fmd_good),
            onPressed: (){},
            label: Text(Text_Strings.login_with_google)),
        SizedBox(height: 40),
        TextButton(onPressed: (){}, child:
        Text.rich(
            TextSpan(
                text: Text_Strings.dont_have_account,
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(
                    text: Text_Strings.signin,
                  )
                ]
            )
        ))
      ],
    );
  }
}


