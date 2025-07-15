import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_and_signup/widgets/Logo_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 115),
            LogoText(),
            
            SvgPicture.asset("assets/image/undraw_access-account_aydp.svg" , height: 500,) , 

            Text("Lorem Ipsum " , style: TextStyle(
              color: Colors.black , 
              fontSize: 30 , 
              fontWeight: FontWeight.bold , 
              fontFamily: 'Prim' , 
            ),) , 

            Text("Lorem Ipsum is a dummy text " , style: TextStyle(
              color: Colors.black , 
              fontSize: 16 , 
              
            ),) ,  

             

            Text("used as placeholder" , style: TextStyle(
              color: Colors.black , 
              fontSize: 16 , 
            ),)
          ],
        ),
      ),
    );
  }
}
