import 'package:flutter/material.dart';
import '../../system_settings/navigation_drawer.dart';

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
          title: const Text(
            'Параметры',
            style: TextStyle(color: Colors.black),
          ),
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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Align(
                child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Divider(color: Colors.yellow, height: 0),
              ],
            ))));
  }
}
