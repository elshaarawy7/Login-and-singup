import 'package:flutter/material.dart';
import 'package:login_and_signup/pages/solash_page.dart';
import 'package:login_and_signup/widgets/OnboardingPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: OnboardingPages(),
    );
  }
}
