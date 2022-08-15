import 'package:flutter/material.dart';
import 'package:webmedicine/pages/employee.dart';
import 'package:webmedicine/pages/exit.dart';
import 'package:webmedicine/pages/home.dart';
import 'package:webmedicine/pages/patients.dart';
import 'package:webmedicine/pages/settings.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (BuildContext c) => const HomePage(),
        "/employee": (BuildContext c) => const EmployeePage(),
        "/patients": (BuildContext c) => const PatientsPage(),
        "/settings": (BuildContext c) => const SettingsPage(),
        "/exit": (BuildContext c) => const ExitPage()
      }
    );
  }
}