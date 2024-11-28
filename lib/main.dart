import 'package:flutter/material.dart';
import 'package:flutter_project/login.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, // Remove o banner de debug
    home: Login(),
  ));
}