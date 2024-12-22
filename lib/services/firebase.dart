// ignore_for_file: unused_field, prefer_final_fields, unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_sign_in/screens/home.dart';

class FirebaseServices {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseStorage _storage = FirebaseStorage.instance;
  FirebaseFirestore _database = FirebaseFirestore.instance;

  String _mainPath = "users";

  bool checkUserActiveness() {
    
    return false;
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }

  void logInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      String userId = _auth.currentUser!.uid;
      print("User id: $userId");

      if (_auth.currentUser != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      }
    } catch (e) {
      print("Error: $e.");
    }
  }

  void signUpWithEmailAndPassword(
    String username,
    String email,
    String password,
    BuildContext context,
  ) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String userId = _auth.currentUser!.uid;

      _database.collection(_mainPath).doc(userId).set(
        {"username": username, "email": email, "password": password},
      );

      if (_auth.currentUser != null) {
        print("User id: $userId");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      }
    } catch (e) {
      print("Error: $e.");
    }
  }
}
