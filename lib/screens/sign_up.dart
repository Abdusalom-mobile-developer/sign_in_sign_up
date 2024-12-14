import 'package:flutter/material.dart';
import 'package:sign_up_sign_in/config/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
           customText(context, "Create account", AppColors.white, 0.2, FontWeight.w500, '')
          ],
        ),
      ),
    );
  }

  Widget customText(BuildContext context, String content, Color color, double fontSize,
      FontWeight fontWeight, String fontFamily) {
        
    return Text(
              content,
              style: TextStyle(
                  color: color,
                  fontSize: MediaQuery.of(context).size.height*fontSize,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight,),
            );
  }
}
