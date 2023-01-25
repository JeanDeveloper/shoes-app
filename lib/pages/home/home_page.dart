import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_inventory/service/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HomePage"),
              OutlinedButton(
                child: const Text('Cerrar Sesion'),
                onPressed: (){
                  authService.signOut();
                }, 
              )
            ],
          ),
        ),
      )
    );
  }
}