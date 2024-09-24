import 'package:flutter/material.dart';
import 'package:saphir/pages/cadastro.dart';
import 'package:saphir/pages/home.dart';
import 'package:saphir/pages/login.dart';
import 'package:saphir/pages/splash.dart';
import 'package:saphir/shared/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode: ThemeMode.system,
     theme: ThemeData(
      // fontFamily: MyFonts.fontPrimary,
      colorScheme: ColorScheme.fromSeed(seedColor: MyColors.azulsaphir),
      useMaterial3: true
     ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home(),
        '/login' : (context) => const Login()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
