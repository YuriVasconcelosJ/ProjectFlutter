import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cor de fundo da tela
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        // Cor da barra superior
        backgroundColor: Colors.red,
        // Titulo da barra superior
        title: const Text(
          "Tela de LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      // Formulario de login
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Form(
            child: Column(
              // Alinhamento dos elementos
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // children:
              children: [
                // Icone do login
                const Icon(Icons.account_circle_rounded,
                    color: Colors.white, size: 110),
                // E-mail
                TextFormField(
                    decoration: InputDecoration(
                  hintText: "E-mail",
                  fillColor: Colors.white, // Cor do texto
                  filled: true, // Preenchimento do texto
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Estilo da borda
                  ),
                )),
                // Senha
                TextFormField(
                    decoration: InputDecoration(
                  hintText: "Senha",
                  fillColor: Colors.white, // Cor do texto
                  filled: true, // Preenchimento do texto
                  hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
        
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // Estilo da borda
                  ),
                ),
                obscureText: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
