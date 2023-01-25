import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

enum AuthStatus{
  UnAuthenticated,
  Authenticating,
  Authenticated,
}

class AuthService extends ChangeNotifier{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  AuthStatus _authStatus = AuthStatus.UnAuthenticated;

  AuthStatus get authStatus => _authStatus;
  set authStatus(AuthStatus status){
    _authStatus = status;
    notifyListeners();
  } 

  User? get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword( String emailtext, String passwordtext )async{
    _authStatus = AuthStatus.Authenticating;
    notifyListeners();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailtext, password: passwordtext);
      // await Future.delayed(Duration(seconds: 3));
      // print(userCredential.credential);
      // print(userCredential.user!.email);
      _authStatus = AuthStatus.Authenticated;
      notifyListeners();
    } catch (e) {
      _authStatus = AuthStatus.UnAuthenticated;
      notifyListeners();
    }
  }

  Future<void> createUserWithEmailAndPassword( String email, String password )async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async{
    _authStatus = AuthStatus.UnAuthenticated;
    notifyListeners();
    await _firebaseAuth.signOut();
  }
}