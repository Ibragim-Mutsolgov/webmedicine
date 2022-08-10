import 'package:flutter/material.dart';
import '../system_settings/navigation_drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Settings createState() => Settings();
}

class Settings extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Параметры', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        shadowColor: Colors.yellow,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/exit');
            },
            child: const Icon(Icons.exit_to_app, color: Colors.black),
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
      body: const Center(
        child: Text("Здесь должны быть системные настройки"),
      ),
    );
  }
}