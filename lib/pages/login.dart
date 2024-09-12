import 'package:flutter/material.dart';

//comando stl
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 30, 30, 30), // Fundo preto opaco
      body: Center(
        child: Form(
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
                        fontSize: 50,
                        fontFamily: 'DaysOne'),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    autofocus: true, // Apenas um campo com autofocus
                    decoration: const InputDecoration(
                        filled: true, // Preenche o fundo
                        fillColor: Colors.white,
                        iconColor: Color.fromARGB(255, 23, 44, 228),
                        hintText: "E-mail",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none)),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    // autofocus removido deste campo
                    decoration: const InputDecoration(
                        filled: true, // Preenche o fundo
                        fillColor: Colors.white,
                        iconColor: Color.fromARGB(255, 23, 44, 228),
                        hintText: "Senha",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none)),
                    obscureText: true, // Para ocultar a senha
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
                      // Função de login
                    },
                    child: const Text("Entrar",
                        style: TextStyle(color: Colors.white)),
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 170, vertical: 15),
                        side: const BorderSide(color: Colors.white, width: 2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.black),
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
                      child:Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/google.png')),
                    ),
                    
                    SizedBox(width: 30),
                    Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/apple.png')),
                    const SizedBox(width: 30),
                    Container(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/image/facebook.png')),
                  ],
                ),
                const SizedBox(height: 30,),

               const  Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
