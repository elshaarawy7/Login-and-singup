import 'package:flutter/material.dart';
import 'package:login_and_signup/widgets/app_color.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return   ShaderMask(
  shaderCallback: (bounds) => LinearGradient(
    colors: [
      AppColor.primiryColor ,
      AppColor.secoundyColor ,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ).createShader(
    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
  ),
  child: Text(
    "LOGO",
    style: TextStyle(
      fontSize: 58,
      fontWeight: FontWeight.w500,
      fontFamily: 'Prime',
      color: Colors.white, // اللون الأساسي بيتغطى بالـ Shader
    ),
  ),
);
  }
}