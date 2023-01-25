import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


enum AuthStatus{

  Uninitialized,
  Authenticated,
  Authenticating,
  UnAuthenticated
  
}

class AuthService extends ChangeNotifier{


  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;




}