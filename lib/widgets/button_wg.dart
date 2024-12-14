import 'package:flutter/material.dart';

import '../config/colors.dart';

class ButtonWg extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color backgroundColor;

  const ButtonWg({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    this.icon,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final myText = Text(
      text,
      style: TextStyle(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
    );
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          child: icon == null
              ? myText
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    Icon(
                      icon,
                      color: AppColors.white,
                    ),
                    myText,
                  ],
                )),
    );
  }
}
