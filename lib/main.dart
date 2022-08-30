import 'package:flutter/material.dart';
import 'package:webmedicine/pages/employee/employee.dart';
import 'package:webmedicine/pages/exit/exit.dart';
import 'package:webmedicine/pages/home/home.dart';
import 'package:webmedicine/pages/patients/patients.dart';
import 'package:webmedicine/pages/settings/settings.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //send();
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        "/home": (BuildContext c) => const HomePage(),
        "/employee": (BuildContext c) => const EmployeePage(),
        "/patients": (BuildContext c) =>  const AllPatients(),
        "/settings": (BuildContext c) => const SettingsPage(),
        "/exit": (BuildContext c) => const ExitPage()
      }
    );
  }
}