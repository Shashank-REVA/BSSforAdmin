import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1wHw1apFyeJ2Yk8d2tJL9M14naHoD1bY",
            authDomain: "bssp-b7552.firebaseapp.com",
            projectId: "bssp-b7552",
            storageBucket: "bssp-b7552.appspot.com",
            messagingSenderId: "885264218854",
            appId: "1:885264218854:web:dab99b473c8c2c6caad927",
            measurementId: "G-Q9BKZ0N28M"));
  } else {
    await Firebase.initializeApp();
  }
}
