import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBaNzwvnoXhqWe_46zalHlz6UyhbbkpFFU",
            authDomain: "tiyenda-3c24c.firebaseapp.com",
            projectId: "tiyenda-3c24c",
            storageBucket: "tiyenda-3c24c.appspot.com",
            messagingSenderId: "172945682634",
            appId: "1:172945682634:web:4237dd9cf768000970c433"));
  } else {
    await Firebase.initializeApp();
  }
}
