import 'package:flutter/material.dart';
import 'package:login_and_signup/widgets/custem_batton.dart';
import 'package:login_and_signup/widgets/custem_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,) , 
            
                Text("Let’s Get Started!" , style: TextStyle(
                   fontSize: 30 , 
                   color: Colors.black , 
                   fontWeight: FontWeight.bold , 
            
                ),) , 
            
                Text("Create an account on MNZL to get all features" , style: TextStyle(
                  color: Colors.black , 
                  fontSize: 16 , 
                  fontWeight: FontWeight.w500 , 
                ),) ,  
            
                SizedBox(height: 50,) , 
            
                CustemTextField(hintText: "First Name ",
                 obscureText: false,
                  icon: Icons.person_2_outlined , 
                ) ,  
            
                SizedBox(height: 20,) ,  
        
                CustemTextField(hintText: "Last Name ",
                 obscureText: false,
                  icon: Icons.person_2_outlined , 
                ) ,  
            
                SizedBox(height: 20,) , 
        
                CustemTextField(hintText: " userame ",
                 obscureText: false,
                  icon: Icons.person_2_outlined , 
                ) ,  
            
                SizedBox(height: 20,) , 
        
                CustemTextField(hintText: "Emil ",
                 obscureText: false,
                  icon: Icons.email_outlined, 
                ) ,  
            
                SizedBox(height: 20,) , 
        
                 CustemTextField(hintText: "Password",
                 obscureText: false,
                  icon: Icons.email_outlined, 
                ) ,  
            
                SizedBox(height: 20,) , 
        
                CustemTextField(hintText: "Confirm Password",
                 obscureText: false,
                  icon: Icons.email_outlined, 
                ) ,  
            
                SizedBox(height: 20,) ,
        
                CustemBatton(
                  text: "CREATE",
                ) ,   
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
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
                          'Login here',
                          style: TextStyle(
                            color: Color(0xFF2C3E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}