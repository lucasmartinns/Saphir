import 'package:flutter/material.dart';

//comando stl
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 30, 30, 30),
      // appBar: AppBar(title: const Text("Saphir"),
      // backgroundColor: Colors.blueGrey,),
      body: Center(
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text("Saphir",
                    style: TextStyle(color: Color.fromARGB(255, 23, 44, 228),
                    fontSize: 50,
                    fontFamily: 'DaysOne'),),
                  ),
                  const SizedBox(height: 60),
                  
                   TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      filled: true, //preenche o fundo
                      fillColor: Colors.white,
                      iconColor: Color.fromARGB(255, 23, 44, 228),
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide.none
                      )
                    ),
                   ),
                   const  SizedBox(height: 40),

                    TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      filled: true, //preenche o fundo
                      fillColor: Colors.white,
                      iconColor: Color.fromARGB(255, 23, 44, 228),
                      hintText: "Senha",
                       border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide.none
                      )
                    ),
                   ),
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(onPressed: (){}, child:Text("Entrar"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 50),
                      backgroundColor: Color.fromARGB(255, 23, 44, 228),
                      foregroundColor: Colors.white,
                    
                    ),),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
}