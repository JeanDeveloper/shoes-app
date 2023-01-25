import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLogin extends StatelessWidget {

  final String titulo;

  const ImageLogin({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(

        width: size.width * .5,
        height: size.height * .4,
        margin: const EdgeInsets.only(top: 50),
        // color: Colors.blue,
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/login.svg', 
              fit: BoxFit.cover, 
              width: size.width * .5,
              height: size.height * .25, 
            ),
            SizedBox(height: size.height * .02),         
            Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold))
          ],
        ),

      ),
    );
  }
}