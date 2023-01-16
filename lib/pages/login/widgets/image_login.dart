import 'package:flutter/material.dart';

class ImageLogin extends StatelessWidget {

  final String titulo;

  const ImageLogin({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(

        width: size.width * 0.7,
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(
              image: const AssetImage('assets/tag-logo.png'), 
              height: size.height * 0.3 , 
              width: size.width * 0.7
            ),
            SizedBox(height: size.height * .01),         
            Text(titulo)
          ],
        ),

      ),
    );
  }
}