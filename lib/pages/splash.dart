import 'package:flutter/material.dart';
import 'dart:async'; // Para usar o Timer

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer para simular o carregamento e redirecionar
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/login'); // Redireciona para a página de login
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF030469), // Cor de cima
              Color.fromARGB(255, 30, 30, 30), // Cor do meio (preta)
              Color(0xFF030469), // Cor de baixo
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/logo.png', // Imagem do logo
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                'Saphir',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
