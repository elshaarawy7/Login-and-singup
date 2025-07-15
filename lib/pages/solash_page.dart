import 'package:flutter/material.dart';
import 'package:login_and_signup/widgets/Logo_text.dart';
import 'package:login_and_signup/widgets/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white , 
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 115) ,
          LogoText() , 
          
        

        ],
       ),
     ),
    );
  }
}