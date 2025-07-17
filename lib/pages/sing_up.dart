import 'package:flutter/material.dart';
import 'package:login_and_signup/pages/Login_page.dart';
import 'package:login_and_signup/widgets/Logo_text.dart';
import 'package:login_and_signup/widgets/custem_batton.dart';
import 'package:login_and_signup/widgets/custem_text_field.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true; 

   GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  
                  
                  LogoText() , 
                  
                  const SizedBox(height: 30),
                  
                  // Welcome text
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50),
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  const Text(
                    'Log in to existing LOGO account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7F8C8D),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  
                  const SizedBox(height: 40),
                  
                  // Username field
                  CustemTextField(
                    hintText: "Username", 
                    obscureText: false,
                    icon: Icons.person_outline_rounded, 
                    ) ,
                  
                  const SizedBox(height: 20),
                  
                  // Password field
                  
                  CustemTextField(hintText: "Password",
                   obscureText: true,
                    icon: Icons.lock_outline_rounded , 
                    ) ,
                  
                  const SizedBox(height: 16), 

                 
                  
                  // Forgot password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF7F8C8D),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Login button 

                   CustemBatton( 
                    text: "LOG IN",
                    onPressed: () {
                    if(formkey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage() ;
                      }));
                    }
                    },
                  ) ,
               
                  
                  const SizedBox(height: 40),
                  
                  // Or sign up using
                  const Text(
                    'Or sign up using',
                    style: TextStyle(
                      color: Color(0xFF7F8C8D),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  const SizedBox(height: 25),
                  
                  // Social media buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/image/Vector (2).png") , 
                      SizedBox(width: 10,) , 
                      Image.asset("assets/image/Group 32.png") , 
                      SizedBox(width: 10,) ,  
                      Image.asset("assets/image/Group 34.png")
                      
                    ],
                  ),
                  
                  const SizedBox(height: 40),
                  
                  // Sign up link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF7F8C8D),
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('الانتقال إلى صفحة التسجيل'),
                              backgroundColor: Color(0xFF3498DB),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF2C3E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
} 

/* 

 Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F2F6),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        color: Color(0xFFBDC3C7),
                        fontSize: 16,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xFFBDC3C7),
                        size: 22,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword 
                            ? Icons.visibility_off_outlined 
                            : Icons.visibility_outlined,
                          color: const Color(0xFFBDC3C7),
                          size: 22,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                    ),
                  ),
                ), 

                */