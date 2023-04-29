import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCVWuNrE-HmQPtTJhg0fv9M895TRJSnSdc",
            authDomain: "recognition-f8b99.firebaseapp.com",
            projectId: "recognition-f8b99",
            storageBucket: "recognition-f8b99.appspot.com",
            messagingSenderId: "797595913210",
            appId: "1:797595913210:web:49fb3d57fdf457b1e9f243"));
  } else {
    await Firebase.initializeApp();
  }
}
