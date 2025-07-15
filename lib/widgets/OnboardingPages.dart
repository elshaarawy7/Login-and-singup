import 'package:flutter/material.dart';
import 'package:login_and_signup/pages/sing_up.dart';
import 'package:login_and_signup/pages/solash_page.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SplashPage(),   // شاشتك الأصلية
          SingUp() ,     // شاشة تسجيل الدخول أو أي شاشة تانية
        ],
      ),
    );
  }
}
