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
                                child: Text(
                                  "Загрузка...",
                                  style: TextStyle(fontSize: 20),
                                ),
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
    ));
  }

  addDataCell(String tc, [bool showEditIcon = false]) {
    return DataCell(
      showEditIcon: showEditIcon,
      Align(
          alignment: Alignment.center,
          child: Text(tc, textAlign: TextAlign.center)),
    );
  }

  String getGender(String s) {
    if (s == '1') {
      return "Мужской";
    } else {
      return "Женский";
    }
  }

  Future<List<DataRow>> getData() async {
    List<DataRow> employeePerson = [];

    // Достать все идентификаторы из бд
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwicm9sZSI6WyJVU0VSIl0sImV4cCI6MTY2NDIxNzM3MCwiaWF0IjoxNjYzMTM3MzcwfQ.2frDQ4MlfPJjOcdzIhFHXyvJIf__rMTfdEkXp1SFI_c'
    };
    var request =
        http.Request('GET', Uri.parse('http://localhost:8086/employee'));
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseData = jsonDecode(await response.stream.bytesToString());
      for (var row in responseData) {
        // Затем вытащить всех пользователей по идетнификаторам
        var request2 = http.Request(
            'GET',
            Uri.parse('http://localhost:8090/people/?id' +
                row["peopleId"].toString()));
        http.StreamedResponse response2 = await request2.send();
        if (response2.statusCode == 200) {
          var responseData2 =
              jsonDecode(await response2.stream.bytesToString());
          for (var row2 in responseData2) {
            employeePerson.add(DataRow(
                key: ValueKey(row2["employee_id"].toString()),
                onLongPress: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             RefactorEmployee(
                  //                 row2["employee_id"].toString(),
                  //                 row2["first_name"].toString(),
                  //                 row2["last_name"].toString(),
                  //                 row2["middle_name"].toString(),
                  //                 row2["birth_date"].toString(),
                  //                 row2['employee']['employee_name'].toString()
                  //             )));
                },
                cells: [
                  addDataCell(row['employee_id'].toString()),
                  addDataCell(row2["first_name"].toString(), true),
                  addDataCell(row2["last_name"].toString(), true),
                  addDataCell(row2["middle_name"].toString(), true),
                  addDataCell(row2["birth_date"].toString(), true),
                  addDataCell(getGender(row2["gender"].toString())),
                  addDataCell(('Надо доделать')),
                ]));
          }
        }
      }
    } else {
      print(response.reasonPhrase);
    }

    return employeePerson;
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
