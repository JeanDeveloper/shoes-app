import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User with ChangeNotifier{

  String id;
  String? displayName;
  String? photoURL;
  String email;

  User({

    required this.id,
    this.displayName,
    this.photoURL,
    required this.email,

  });


  factory User.fromFireStore(DocumentSnapshot userDoc){

    Map userData = userDoc.reference as Map;

    return User(

      id: userDoc.id,
      displayName: userData['displayName'],
      photoURL: userData['photoURL'],
      email: userData['email']

    );





  }


}