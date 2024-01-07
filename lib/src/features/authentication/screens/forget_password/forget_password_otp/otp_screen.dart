import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt_2/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(Text_Strings.otp_title,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 60
            ),),
            Text(Text_Strings.otp_verification,style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
            SizedBox(height: 30),
            Text(Text_Strings.otp_content),
            SizedBox(height: 30),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                print(code);
                },
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){}, child: Text(Text_Strings.nextTxt))
          ],
        ),
      ),
    );
  }
}
