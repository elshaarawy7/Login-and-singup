import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_and_signup/const.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white , 
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 200,) ,
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(KLogo ) , 
            ) , 
        ],
      ),
    ) ;
  }
}