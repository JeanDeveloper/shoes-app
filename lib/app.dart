import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_inventory/routes/routes.dart';
import 'package:shoes_inventory/service/auth_service.dart';
import 'package:shoes_inventory/widgets/initalized_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider( create: ( _ ) => AuthService() ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoes App',
        theme: ThemeData(primarySwatch: Colors.blue,),
        home: const InitializedWidget(),
        routes: routes
      ),
    );
  }
}