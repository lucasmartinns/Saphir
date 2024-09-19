import 'package:flutter/material.dart';
import 'package:saphir/pages/cadastro.dart';
import 'package:saphir/pages/home.dart';
import 'package:saphir/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
