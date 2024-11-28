import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool entrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cor de fundo da tela
      backgroundColor: (entrar) ? Colors.black : Colors.brown,
      appBar: AppBar(
        centerTitle: true,
        // Cor da barra superior
        backgroundColor: (entrar) ? Colors.red : Colors.deepOrange,
        // Titulo da barra superior
        title: Text(
          (entrar) ? "Tela de LOGIN" : "Tela de CADASTRO",
          style: const TextStyle(
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
                Icon(
                    (entrar)
                        ? Icons.account_circle_rounded
                        : Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 110),
                // E-mail
                const SizedBox(height: 20),
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
                const SizedBox(
                    height: 20), // Espaçamento entre o e-mail e a senha
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
                      borderRadius:
                          BorderRadius.circular(10), // Estilo da borda
                    ),
                  ),
                  obscureText: true,
                ),
                // Tela de Cadastro
                Visibility(
                    visible: !entrar,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Confirme a Senha",
                            fillColor: Colors.white, // Cor do texto
                            filled: true, // Preenchimento do texto
                            hintStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),

                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Estilo da borda
                            ),
                          ),
                          obscureText: true,
                        ),
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
                            borderRadius:
                                BorderRadius.circular(10), // Estilo da borda
                          ),
                        )),
                      ],
                    )),
                // Espaçamento entre o botão e o texto
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  // Botaton de login:
                  // Arrumar o tamanho do botão
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {},
                        // Formataçao do botao
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                (entrar) ? Colors.red : Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        child: Text(
                          (entrar) ? "Login" : "cadastar",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ),
                ),
                // Texto de cadastro
                TextButton(
                    onPressed: () {
                      setState(() {
                        entrar = !entrar;
                      });
                    },
                    child: Text(
                      (entrar) ? "Cadastre-se" : "Entre",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
