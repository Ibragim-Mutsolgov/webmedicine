import 'dart:convert';
import 'package:http/http.dart' as http;

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

  Future<void> send() async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST', Uri.parse('http://localhost:8086/auth'));
    request.body = json.encode({
      "username": "user",
      "password": "password"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
    print(response.reasonPhrase);
    }
  }
}