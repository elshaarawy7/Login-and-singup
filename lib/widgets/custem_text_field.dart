import 'package:flutter/material.dart';

class CustemTextField extends StatelessWidget {
  CustemTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.icon,
  });

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final String hintText;
  final bool obscureText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        validator: (value) {
          if(value == null || value.isEmpty){
            return "Field is required";
          } else if(value.length < 6) {
            return "Field is required";
          } 

          return null ;
        },
        obscureText: obscureText,
        controller: _usernameController,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          prefixIcon: Icon(
            icon, 
            color:  Colors.black ,
            size: 22,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}
