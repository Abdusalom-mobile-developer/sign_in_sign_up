import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_up_sign_in/config/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.07,
                  ),
                  customText(
                    "Create account",
                    AppColors.darkTeal,
                    height * 0.047,
                    FontWeight.w600,
                    '',
                  ),
                  customText(
                    "Sign up to get started!",
                    AppColors.lightTeal,
                    height * 0.025,
                    FontWeight.w500,
                    '',
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  customTextField(height, width, controller,
                      Icons.person_outline_rounded, "Username"),
                  customTextField(height, width, controller,
                      Icons.email_outlined, "Email Address"),
                  customTextField(height, width, controller,
                      Icons.lock_outline_rounded, "Password"),
                  customTextField(height, width, controller,
                      Icons.lock_outline_rounded, "Confirm Password"),
                  SizedBox(
                    height: height * 0.013,
                  ),
                  customButton(
                    height,
                    "Sign Up",
                    AppColors.black,
                    AppColors.amber,
                    AppColors.amber,
                  ),
                  customButton2(
                    height,
                    "Sign up using Apple",
                    AppColors.white,
                    AppColors.black,
                    AppColors.white,
                    Icons.apple,
                    height * 0.037,
                  ),
                  customButton2(
                    height,
                    "Sign up using Google",
                    AppColors.black,
                    AppColors.lightSilver,
                    AppColors.black,
                    FontAwesomeIcons.google,
                    height * 0.03,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        "Already member? ",
                        AppColors.darkTeal,
                        height * 0.025,
                        FontWeight.w400,
                        '',
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: customText(
                          "Log in",
                          AppColors.darkTeal,
                          height * 0.025,
                          FontWeight.w400,
                          '',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        "Already member? ",
                        AppColors.white,
                        height * 0.025,
                        FontWeight.w400,
                        '',
                      ),
                      Transform.translate(
                        offset: Offset(0, -height * 0.015),
                        child: Container(
                          height: height * 0.0025,
                          width: height * 0.065,
                          decoration: BoxDecoration(
                              color: AppColors.amber,
                              borderRadius: BorderRadius.circular(height * 5)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customText(String content, Color color, double fontSize,
      FontWeight fontWeight, String fontFamily) {
    return Text(
      content,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }

  Widget customButton(double height, String text, Color textColor,
      Color bgColor, Color iconColor) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.02),
      height: height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(height * 0.08),
      ),
      child: TextButton(
        onPressed: () {},
        child: customText(text, textColor, height * 0.024, FontWeight.w600, ''),
      ),
    );
  }

  Widget customButton2(double height, String text, Color textColor,
      Color bgColor, Color iconColor, IconData icon, double iconsSize) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.02),
      alignment: Alignment.center,
      height: height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(height * 0.08),
      ),
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconsSize,
              ),
              SizedBox(
                width: height * 0.01,
              ),
              customText(text, textColor, height * 0.024, FontWeight.w600, ''),
            ],
          )),
    );
  }

  Widget customTextField(double height, width, TextEditingController controller,
      IconData icon, String text) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: height * 0.01),
      margin: EdgeInsets.only(top: height * 0.026),
      height: height * 0.069,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.01),
          border:
              Border.all(color: AppColors.lightTeal, width: height * 0.002)),
      child: Row(
        children: [
          Icon(
            icon,
            size: height * 0.033,
            color: AppColors.lightTeal,
          ),
          SizedBox(
            width: width * 0.015,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              cursorColor: AppColors.lightTeal,
              style: TextStyle(
                decoration: TextDecoration.none,
                decorationColor: Colors.transparent,
                decorationThickness: 0,
                color: AppColors.lightTeal,
                fontSize: height * 0.023,
              ),
              decoration: InputDecoration(
                  hintText: text,
                  hintStyle: TextStyle(
                    color: AppColors.lightTeal,
                    fontSize: height * 0.023,
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
