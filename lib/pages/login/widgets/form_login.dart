import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoes_inventory/service/auth_service.dart';
import 'package:shoes_inventory/pages/login/widgets/widgets.dart';

class FormLogin extends StatefulWidget {

  @override
  State<FormLogin> createState() => _FormLoginState();

}

class _FormLoginState extends State<FormLogin> {


  final emailController = TextEditingController();
  final passController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context);
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [

          CustomInput(
            hinttext: 'Usuario',
            icon:const  Icon(Icons.email_outlined),
            isPassword: false,
            keyboradType: TextInputType.emailAddress,
            textController: emailController,
          ),

          CustomInput(
            hinttext: 'Contraseña',
            icon: const Icon(Icons.lock_outline),
            isPassword: true,
            keyboradType: TextInputType.visiblePassword,
            textController: passController,
          ),

          ButtonBlue(
            onPressed: () async {
              await authService.signInWithEmailAndPassword( emailController.text, passController.text );
            },
            text: 'Ingresar',
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

}