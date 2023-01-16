import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final Icon icon;
  final String hinttext;
  final TextEditingController textController;
  final TextInputType keyboradType;
  final bool isPassword;


  const CustomInput({
    required this.icon, 
    required this.hinttext, 
    required this.textController, 
    required this.keyboradType, 
    required this.isPassword
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0,5),
            blurRadius: 5
          )
        ]
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: keyboradType,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: icon,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: hinttext
        ),

      ),
    );

  }
}