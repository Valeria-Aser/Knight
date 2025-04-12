import 'package:flutter/material.dart';
import 'package:gladiators/pages/splash_screen.dart';
import 'package:gladiators/widgets/inventory.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      // Маршруты приложения
      routes: {
        // Главный экран
        '/': (context) => SplashScreen(),
        // Экран подробностей
        // '/selectKnightPage': (context) => const DetailsScreen(),
      },      
    );
  }
}
