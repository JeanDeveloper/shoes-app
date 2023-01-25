import 'package:flutter/material.dart';
import 'package:shoes_inventory/pages/pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      theme: ThemeData(primarySwatch: Colors.blue,),
      initialRoute: "login",
      routes: {
        "login": (context) => const LoginPage(),
      },
    );
  }
}