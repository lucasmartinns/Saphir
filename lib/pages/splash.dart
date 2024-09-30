import 'package:flutter/material.dart';
import 'package:saphir/pages/login.dart'; // Certifique-se de importar a tela de Login

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late Animation<double> _logoAnimation;
  late bool showLoginText = false;

  @override
  void initState() {
    super.initState();

    // Controlador para a animação do logo
    _logoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeInOut,
    );

    // Iniciar a animação
    _logoController.forward();

    // Esperar 3 segundos e iniciar a transição para o texto de login
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        showLoginText = true;
      });
    });

    // Depois de 5 segundos, transitar para a tela de login
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()), // Transição para a tela de login
      );
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _logoAnimation,
              child: Image.asset('assets/image/saphir.png'), // Primeira imagem do logo
            ),
            const SizedBox(height: 10),
            AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              child: showLoginText
                  ? const Text(
                      '', // Texto de Login removido
                      key: ValueKey('loginText'),
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 23, 44, 228),
                        fontFamily: 'DaysOne', // Aplicando a fonte Days One
                      ),
                    )
                  : const Text(
                      'saphir',
                      key: ValueKey('saphirText'),
                      style: TextStyle(
                        fontSize: 60,
                        color: Color.fromARGB(255, 23, 44, 228),
                        fontFamily: 'DaysOne', // Aplicando a fonte Days One
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
