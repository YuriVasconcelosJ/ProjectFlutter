import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart'; // Ou o arquivo onde está a tela de login

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyA7VPRUahZGhAqMtFWVbeZPLpwueAXJ0Vw",
      appId: "1:919722209349:web:f8f72a22ed68cfadbe732c",
      messagingSenderId: "919722209349",
      projectId: "projetoflutterfirebase-c1d6c",
      authDomain: "projetoflutterfirebase-c1d6c.firebaseapp.com",
      storageBucket: "projetoflutterfirebase-c1d6c.firebasestorage.app",
      measurementId: "G-CC75JTQBQT",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(), // Sua tela de login
    );
  }
}
