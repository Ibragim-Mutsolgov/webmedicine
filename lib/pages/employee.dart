import 'package:flutter/material.dart';
import 'package:webmedicine/pages/add_new_employee.dart';
import '../system_settings/navigation_drawer.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Employee createState() => Employee();
}

class Employee extends State<EmployeePage> {

  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Сотрудники', style: TextStyle(color: Colors.black),),
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
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: ButtonTheme(
                          minWidth: 100.0,
                          height: 50.0,
                          child: RaisedButton(
                            color: Colors.yellow,
                            onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>
                                    const AddEmployee()));
                            },
                            child: Text("Добавить сотрудника", style: TextStyle(fontSize: 20, color: Colors.black),),
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Список сотрудников", style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                  const Divider(color: Colors.yellow, height: 0),
                  // 0, 30, 0, 30
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 39, 30, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Scrollbar(
                            scrollbarOrientation: ScrollbarOrientation.bottom,
                            child: SizedBox(
                              width: 2000,
                              child: Functions().getTable(),
                            ),
                          )
                        ],
                      )
                    ),
                  )
                ],
              )
            )
          )
      )
    );
  }
}

class Functions {

  var doctors = [

  ];

  List<Column> column = [];

  TableRow tableRow = const TableRow();

  var table = Table(
    textDirection: TextDirection.ltr,
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(color: Colors.white),
    children: [
      TableRow(
          children: [
            Column(children: const [
              Text('', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Фамилия', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Имя', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Отчество', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Дата рождения', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Пол', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Место рождения', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Серия', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Номер', style: TextStyle(fontSize: 20),)
            ]),
            Column(children: const [
              Text('Выдан', style: TextStyle(fontSize: 20),)
            ]),
          ]
      )
    ],
  );

  getTable() {
    for(int i = 0; i < doctors.length; i++) {
      column.add(
        Column(children: [
          Text(doctors[i], style: const TextStyle(fontSize: 20),)
        ]),
      );
    }

    for(int i = 0; i < column.length; i++) {
      table.children.first.children?.add(
          column[i]
      );
    }

    for(int i = 0; i < doctors.length; i++) {

    }
    return table;
  }
}