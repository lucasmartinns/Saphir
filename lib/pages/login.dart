import 'package:flutter/material.dart';
import 'package:saphir/pages/cadastro.dart';
import 'package:saphir/pages/splash.dart';
//comando stl
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 30, 30, 30), // Fundo preto opaco
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "saphir",
                    style: TextStyle(
                        color: Color.fromARGB(255, 23, 44, 228),
                        fontSize: 60,
                        fontFamily: 'DaysOne'),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    autofocus: false, // Apenas um campo com autofocus
                    decoration:  InputDecoration(
                        filled: true, // Preenche o fundo
                       fillColor: Colors.grey[800],
                        iconColor: Color.fromARGB(255, 23, 44, 228),
                        labelText:  "E-mail",
                        labelStyle: TextStyle(color: Colors.white),
                        border:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none)),
                    validator: (String? email) {
                      if (email == "" || email == null) {
                        return "O email não pode estar vazio";
                      }
                      if (email.length < 6) {
                        return "O e-mail está muito curto";
                      }
                      if (!email.contains("@")) {
                        return "O e-mail não é valido";
                      }
                      return null;
                    }, // Para ocultar a senha
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    obscureText: _showPassword == false ? true : false,
                    // autofocus removido deste campo
                    decoration: InputDecoration(
                        filled: true, // Preenche o fundo
                        suffixIcon: GestureDetector(
                          child: Icon(_showPassword == false
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                        fillColor: Colors.grey[800],
                        iconColor: Color.fromARGB(255, 23, 44, 228),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            // Função de esquecimento de senha
                          },
                          child: const Text(
                            "Esqueceu a senha?",
                            style: TextStyle(color: Colors.blue),
                          )),
                    )),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      buttonEnterClick();
                    },
                    child:  Text("Entrar",
                        style: TextStyle(color: Colors.white)),
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 170, vertical: 15),
                        side: const BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Color.fromARGB(255, 30, 30, 30)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/google.png'),
                      ),
                    ),
                    SizedBox(width: 30),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/apple.png'),
                      ),
                    ),
                    SizedBox(width: 30),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/facebook.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  indent: 90,
                  endIndent: 90,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centraliza o conteúdo na horizontal
                    children: [
                      const Text(
                        "Não tem uma conta?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                          width: 5), // Espaço entre o texto e o "Cadastre-se"
                      GestureDetector(
                        child: const Text(
                          "Cadastre-se",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/cadastro");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("form ok");
    } else {
      print("form erro");
    }
  }
}
