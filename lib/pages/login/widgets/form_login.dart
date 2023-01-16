import 'package:flutter/material.dart';
import 'package:shoes_inventory/pages/login/widgets/widgets.dart';

class FormLogin extends StatefulWidget {

  @override
  State<FormLogin> createState() => _FormLoginState();

}

class _FormLoginState extends State<FormLogin> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding:  const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [

          CustomInput(
            hinttext: 'Usuario',
            icon:const  Icon(Icons.email_outlined),
            isPassword: false,
            keyboradType: TextInputType.name,
            textController: emailController,
          ),

          CustomInput(
            hinttext: 'Contraseña',
            icon: const Icon(Icons.lock_outline),
            isPassword: true,
            keyboradType: TextInputType.visiblePassword,
            textController: passController,
          ),

          //TODO: Crear Boton

          ButtonBlue(
            onPressed: (){
              print(emailController.text);
              print(passController.text);
            },
            text: 'Ingresar',
          ),

        ],
      ),
    );
  }
}