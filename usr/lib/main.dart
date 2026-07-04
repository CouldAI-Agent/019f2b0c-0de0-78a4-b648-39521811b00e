import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/marketplace_screen.dart';
import 'screens/company_screen.dart';

void main() {
  runApp(const CorrugatedApp());
}

class CorrugatedApp extends StatelessWidget {
  const CorrugatedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corrugated Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/marketplace': (context) => const MarketplaceScreen(),
        '/company': (context) => const CompanyScreen(),
      },
    );
  }
}
