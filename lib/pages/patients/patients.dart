import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webmedicine/pages/patients/add_new_patients.dart';
import 'package:http/http.dart' as http;
import '../../system_settings/navigation_drawer.dart';
import '../employee/refactor_employee.dart';

class AllPatients extends StatefulWidget {
  const AllPatients({Key? key}) : super(key: key);

  @override
  State<AllPatients> createState() => _AllPatientsState();
}

class _AllPatientsState extends State<AllPatients> {

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
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientsPage()));
              },
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ],
        ),
        drawer: const NavigationDrawer(),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Align(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                          child: Text(
                            "Список пациентов",
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
                                          child: Text("Загрузка...", style: TextStyle(fontSize: 20),),
                                        );
                                      }
                                    },
                                  ),
                                ))),
                      ],
                    )
                )
            )
        )
    );
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

  String getGender(String s) {
    if (s == '1') {
      return "Мужской";
    } else {
      return "Женский";
    }
  }

  Future<List<DataRow>> getData() async {
    List<DataRow> dataRows = [];
    var request =
    http.Request('GET', Uri.parse('http://localhost:8086/people'));
    request.headers.addAll({
      'Content-Type': 'application/json',
      'Authorization':
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwicm9sZSI6WyJVU0VSIl0sImV4cCI6MTY2Mjk0OTgwNiwiaWF0IjoxNjYxODY5ODA2fQ.SJsvdAT73HcaiBFtT6DSn-gytlOYbm_773xUpy9fztU'
    });
    http.StreamedResponse response = await request.send();
    var responseData = jsonDecode(await response.stream.bytesToString());

    print(responseData[0]['employee']['employee_name']);
    for (var row in responseData) {
      if(row['patients'] != null) {
        var request2 = http.Request('GET', Uri.parse('http://localhost:8086/people/emp'));
        request.headers.addAll({
          'Content-Type': 'application/json',
          'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwicm9sZSI6WyJVU0VSIl0sImV4cCI6MTY2Mjk0OTgwNiwiaWF0IjoxNjYxODY5ODA2fQ.SJsvdAT73HcaiBFtT6DSn-gytlOYbm_773xUpy9fztU'
        });
        request2.body = json.encode({
          "employee_id": row["id"].toString(),
          "employee_name": row['employee']['employee_name'].toString()
        });

        http.StreamedResponse response2 = await request2.send();
        if (response2.statusCode == 200) {
          var responseData2 = jsonDecode(await response2.stream.bytesToString());
          print(responseData2);

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
                  addDataCell(responseData2['surname'] + " " + responseData2['name'] +
                      " " + responseData2['patronymic']),
                  addDataCell(row['employee']['employee_name'].toString())
                ]),
          );
        }
        else {
          print(response2.reasonPhrase);
        }
      }
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
          addColumn('ФИО врача'),
          addColumn('Должность врача')
        ],
        rows: dataRows);

    return table;
  }
}

class TableRows {
  static List<DataRow> dataRows = [];
}