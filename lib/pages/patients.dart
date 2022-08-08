import 'package:flutter/material.dart';
import '../system_settings/NavigationDrawer.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Patients createState() => Patients();
}

class Patients extends State<PatientsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пациенты', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        shadowColor: Colors.yellow,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/exit');
            },
            highlightColor: Colors.black12,
            child: const Icon(Icons.exit_to_app, color: Colors.black),
          ),
        ],
      ),
      drawer: NavigationDrawer(context),
      body: const Center(
        child: Text("Здесь должны быть данные пациентов"),
      ),
    );
  }
}