import 'package:firebase_auth/firebase_auth.dart'; // Importa Firebase Auth
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Principal"),
        backgroundColor: const Color.fromRGBO(244, 67, 54, 1), // Cor personalizada para o AppBar
        elevation: 0,
      ),
      body: Container(
        color: const Color.fromARGB(255, 246, 244, 244), // Cor sólida para o fundo (um tom de cinza claro)
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.home_filled,
                size: 100,
                color: Colors.grey, // Cor do ícone
              ),
              const SizedBox(height: 20),
              const Text(
                "Bem-vindo à Tela Principal!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Cor do texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
