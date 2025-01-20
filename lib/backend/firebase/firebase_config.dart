import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBefIitCzpE2dy_HLyR8QVpitifa8XQtUs",
            authDomain: "hatidphtrial.firebaseapp.com",
            projectId: "hatidphtrial",
            storageBucket: "hatidphtrial.appspot.com",
            messagingSenderId: "375054126412",
            appId: "1:375054126412:web:8340016ce8c40a458293e9"));
  } else {
    await Firebase.initializeApp();
  }
}
