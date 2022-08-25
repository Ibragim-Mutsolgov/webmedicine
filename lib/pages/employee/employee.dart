import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webmedicine/pages/employee/add_new_employee.dart';
import 'package:webmedicine/pages/employee/refactor_employee.dart';
import '../../system_settings/navigation_drawer.dart';
import 'package:http/http.dart' as http;

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Employee createState() => Employee();
}

class Employee extends State<EmployeePage> {
  GlobalKey<FormState> key = GlobalKey();
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Сотрудники',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddEmployee()));
              },
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ],
        ),
        drawer: const NavigationDrawer(),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                child: Text(
                  "Список сотрудников",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              const Divider(color: Colors.yellow, height: 0),
              // 0, 30, 0, 30
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      width: 1000,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(top: 39.0),
                        child: FutureBuilder<List<DataRow>>(
                          future: getData(),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<DataRow>> snapshot) {
                            if (snapshot.hasData) {
                              return getTable(snapshot.requireData);
                            } else {
                              return const Center(
                                child: Text("Загрузка...", style: TextStyle(fontSize: 20),),
                              );
                            }
                          },
                        ),
                      ))),
            ])));
  }

  addColumn(String th) {
    return DataColumn(
        label: Expanded(
          child: Text(
            th,
            textAlign: TextAlign.center,
          ),
        )
    );
  }

  addDataCell(String tc, [bool showEditIcon = false]) {
    return DataCell(
      showEditIcon: showEditIcon,
      Align(
          alignment: Alignment.center,
          child: Text(tc, textAlign: TextAlign.center)),
    );
  }

  Future<List<DataRow>> getData() async {
    String getGender(String s) {
      if (s == '1') {
        return "Мужской";
      } else {
        return "Женский";
      }
    }

    List<DataRow> dataRows = [];
    var request =
        http.Request('GET', Uri.parse('http://localhost:8086/people'));
    request.headers.addAll({
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwicm9sZSI6WyJVU0VSIl0sImV4cCI6MTY2MjMxODYyMSwiaWF0IjoxNjYxMjM4NjIxfQ.HHgDs1CP19oC0wxyzPmaDKIcU_MFeON8tHJZT7FqO80'
    });
    http.StreamedResponse response = await request.send();
    var responseData = jsonDecode(await response.stream.bytesToString());
    print(responseData[0]['employee']['employee_name']);
    for (var row in responseData) {
      dataRows.add(
        DataRow(
            key: ValueKey(row["id"].toString()),
            onLongPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RefactorEmployee(
                            row["id"].toString(),
                            row["surname"].toString(),
                            row["name"].toString(),
                            row["patronymic"].toString(),
                            row["date"].toString(),
                              row['employee']['employee_name'].toString()
                          )));
            },
            cells: [
              addDataCell(row["id"].toString()),
              addDataCell(row["surname"].toString(), true),
              addDataCell(row["name"].toString(), true),
              addDataCell(row["patronymic"].toString(), true),
              addDataCell(row["date"].toString(), true),
              addDataCell(getGender(row["gender"].toString())),
              addDataCell(row['employee']['employee_name'].toString())
            ]),
      );
    }
    return dataRows;
  }

  Widget getTable(List<DataRow> dataRows) {
    var table = DataTable(
        border: TableBorder.all(color: Colors.white),
        columns: [
          addColumn('№'),
          addColumn('Фамилия'),
          addColumn('Имя'),
          addColumn('Отчество'),
          addColumn('Дата\nрождения'),
          addColumn('Пол'),
          addColumn('Должность')
        ],
        rows: dataRows);

    return table;
  }
}

class TableRows {
  static List<DataRow> dataRows = [];
}
