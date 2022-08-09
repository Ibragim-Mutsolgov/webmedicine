import 'package:flutter/material.dart';
import '../system_settings/NavigationDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Регистратура", style: TextStyle(color: Colors.black),),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Text("Записи", style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                  child: Functions().fucn()
              ),
            ],
          ),
        ),
      )
    );
  }
}

class Functions {

  var times = [
    "9:00 - 9:15",
    "9:15 - 9:30",
    "9:30 - 9:45",
    "9:45 - 10:00",
    "10:00 - 10:15",
    "10:15 - 10:30",
    "10:30 - 10:45",
    "10:45 - 11:00",
    "11:00 - 11:15",
    "11:15 - 11:30",
    "11:30 - 11:45",
    "11:45 - 12:00",
    "12:00 - 12:15",
    "12:15 - 12:30",
    "12:30 - 12:45",
    "12:45 - 13:00",
    "13:00 - 13:15",
    "13:15 - 13:30",
    "13:30 - 13:45",
    "13:45 - 14:00",
    "14:00 - 14:15",
    "14:15 - 14:30",
    "14:30 - 14:45",
    "14:45 - 15:00",
    "15:00 - 15:15",
    "15:15 - 15:30",
    "15:30 - 15:45",
    "15:45 - 16:00",
    "16:00 - 16:15",
    "16:15 - 16:30",
    "16:30 - 16:45",
    "16:45 - 17:00",
    "17:00 - 17:15",
    "17:15 - 17:30",
    "17:30 - 17:45",
    "17:45 - 18:00"
  ];

  var doctors = [
    "Хирург",
    "Педиатр",
    "Офтальмолог",
    "Стоматолог",
    "Рентгенолог"
  ];

  var table = Table(
    textDirection: TextDirection.ltr,
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(color: Colors.white),
    children: [
      TableRow(
          children: [
            Column(children:[
              Text('Часы', style: TextStyle(fontSize: 20),)
            ]),
            Column(children:[
              Text('Хирург', style: TextStyle(fontSize: 20))
            ]),
            Column(children:[
              Text('Педиатр', style: TextStyle(fontSize: 20))
            ]),
            Column(children:[
              Text('Офтальмолог', style: TextStyle(fontSize: 20),)
            ]),
            Column(children:[
              Text('Стоматолог', style: TextStyle(fontSize: 20))
            ]),
            Column(children:[
              Text('Рентгенолог', style: TextStyle(fontSize: 20))
            ]),
          ]
      )
    ],
  );

  fucn() {
    for(int i = 0; i < times.length; i++) {
      table.children.add(
          TableRow(
              children: [
                Column(children:[
                  Text(times[i], style: TextStyle(fontSize: 20),)
                ]),
                Column(children:[
                  Text('', style: TextStyle(fontSize: 20))
                ]),
                Column(children:[
                  Text('', style: TextStyle(fontSize: 20))
                ]),
                Column(children:[
                  Text('', style: TextStyle(fontSize: 20),)
                ]),
                Column(children:[
                  Text('', style: TextStyle(fontSize: 20))
                ]),
                Column(children:[
                  Text('', style: TextStyle(fontSize: 20))
                ]),
              ]
          )
      );
    }
    return table;
  }
}