import 'package:flutter/material.dart';
import 'package:shoes_inventory/pages/pages.dart';

final Map<String, Widget Function(BuildContext)> routes = {

  'login' : ( context ) => const LoginPage(),
  'home'  : ( context ) => const HomePage(),

};