import 'package:flutter/material.dart';
import 'package:shoes_inventory/pages/login/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: SizedBox(
            height: size.height * .9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ImageLogin(titulo: 'Shoes App'),
                FormLogin(),
                const Text('Development by Jean Carlo Chunga Sandoval', style: TextStyle(fontWeight: FontWeight.w200))
              ],

              ),
          ),
        ),
      ),
    );


  }
}