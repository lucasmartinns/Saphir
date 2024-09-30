import 'package:flutter/material.dart';
import 'package:saphir/pages/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _iconController;
  late AnimationController _finalSlideController;
  late Animation<double> _iconAnimation;
  late Animation<Offset> _finalSlideAnimation;

  bool _showText = false;

  @override
  void initState() {
    super.initState();

    // Controlador para a animação do ícone
    _iconController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Controlador para a animação de deslizamento do texto no final
    _finalSlideController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Animação para diminuir o ícone
    _iconAnimation = Tween<double>(begin: 1.5, end: 0.6).animate(
      CurvedAnimation(parent: _iconController, curve: Curves.easeInOut),
    );

    // Animação para o texto "saphir" subir ao final da splash
    _finalSlideAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -2))
        .animate(CurvedAnimation(parent: _finalSlideController, curve: Curves.easeInOut));

    // Iniciar a animação do ícone
    _iconController.forward();

    // Mostrar o texto "saphir" após o ícone diminuir
    _iconController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showText = true;
        });
      }
    });

    // Após 3 segundos, iniciar a animação de deslizamento do texto para cima
    Future.delayed(const Duration(seconds: 4), () {
      _finalSlideController.forward(); // Iniciar a animação de deslizamento para o topo
    });

    // Após 5 segundos, transitar para a tela de login
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()), // Transição para a tela de login
      );
    });
  }

  @override
  void dispose() {
    _iconController.dispose();
    _finalSlideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Ícone aparece primeiro e diminui de tamanho
            ScaleTransition(
              scale: _iconAnimation,
              child: Image.asset(
                'assets/image/saphir.png',
                width: 300, // Tamanho grande inicial
                height: 300, // Tamanho grande inicial
              ),
            ),
            // Se o texto deve ser mostrado, ele aparece abaixo do ícone e depois sobe
            if (_showText)
              Positioned(
                top: 370, // Posição inicial abaixo do ícone
                child: SlideTransition(
                  position: _finalSlideAnimation,
                  child: const Text(
                    'saphir',
                    style: TextStyle(
                      fontSize: 60,
                      color: Color.fromARGB(255, 23, 44, 228),
                      fontFamily: 'DaysOne', // Fonte 'Days One'
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
