import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RefactorEmployee extends StatefulWidget {
  String id;
  String surname;
  String name;
  String patronymic;
  String date;
  String work;

  RefactorEmployee(
      this.id, this.surname, this.name, this.patronymic, this.date, this.work,
      {Key? key})
      : super(key: key);

  @override
  State<RefactorEmployee> createState() =>
      _RefactorEmployeeState(id, surname, name, patronymic, date, work);
}

class _RefactorEmployeeState extends State<RefactorEmployee> {
  final Fields _fields = Fields();
  String id;
  String surname;
  String name;
  String patronymic;
  String date;
  String work;

  _RefactorEmployeeState(
      this.id, this.surname, this.name, this.patronymic, this.date, this.work);

  GlobalKey<FormState> key = GlobalKey();

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
        ),
        body: SingleChildScrollView(
            child: Align(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                        child: Text(
                          "Изменить параметры",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      const Divider(color: Colors.yellow, height: 0),
                      Form(
                          key: key,
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 39, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.zero,
                                    child: SizedBox(
                                      width: 150,
                                      child: TextFormField(
                                        initialValue: surname,
                                        cursorColor: Colors.yellow,
                                        keyboardType: TextInputType.name,
                                        validator: (String? inValue) {
                                          inValue =
                                              inValue?.replaceAll(" ", "");
                                          if (inValue?.length == 0) {
                                            return "Пожалуйста, введите фамилию";
                                          }
                                          return null;
                                        },
                                        onSaved: (String? inValue) {
                                          this._fields.surname = inValue!;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            hintText: "Фамилия",
                                            labelText: "Фамилия",
                                            labelStyle:
                                                TextStyle(color: Colors.yellow),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            fillColor: Colors.yellow),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: SizedBox(
                                      width: 150,
                                      child: TextFormField(
                                        initialValue: name,
                                        cursorColor: Colors.yellow,
                                        keyboardType: TextInputType.name,
                                        validator: (String? inValue) {
                                          inValue =
                                              inValue?.replaceAll(" ", "");
                                          if (inValue?.length == 0) {
                                            return "Пожалуйста, введите имя";
                                          }
                                          return null;
                                        },
                                        onSaved: (String? inValue) {
                                          this._fields.name = inValue!;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            hintText: "Имя",
                                            labelText: "Имя",
                                            labelStyle:
                                                TextStyle(color: Colors.yellow),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            fillColor: Colors.yellow),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.zero,
                                    child: SizedBox(
                                      width: 150,
                                      child: TextFormField(
                                        initialValue: patronymic,
                                        cursorColor: Colors.yellow,
                                        keyboardType: TextInputType.name,
                                        validator: (String? inValue) {
                                          inValue =
                                              inValue?.replaceAll(" ", "");
                                          if (inValue?.length == 0) {
                                            return "Пожалуйста, введите отчество";
                                          }
                                          return null;
                                        },
                                        onSaved: (String? inValue) {
                                          this._fields.patronymic = inValue!;
                                        },
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            hintText: "Отчество",
                                            labelText: "Отчество",
                                            labelStyle:
                                                TextStyle(color: Colors.yellow),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.yellow,
                                                  width: 2.0),
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            fillColor: Colors.yellow),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 20, 0),
                                        child: SizedBox(
                                          width: 150,
                                          child: TextFormField(
                                            initialValue: date,
                                            cursorColor: Colors.yellow,
                                            keyboardType: TextInputType.name,
                                            validator: (String? inValue) {
                                              inValue =
                                                  inValue?.replaceAll(" ", "");
                                              if (inValue?.length == 0) {
                                                return "Пожалуйста, введите дату рождения";
                                              }
                                              return null;
                                            },
                                            onSaved: (String? inValue) {
                                              this._fields.date = inValue!;
                                            },
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                hintText: "ГГГГ-ММ-ДД",
                                                labelText: "Дата рождения",
                                                labelStyle: TextStyle(
                                                    color: Colors.yellow),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.yellow),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.yellow,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                fillColor: Colors.yellow),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: SizedBox(
                                          width: 320,
                                          child: TextFormField(
                                            initialValue: work,
                                            cursorColor: Colors.yellow,
                                            keyboardType: TextInputType.name,
                                            validator: (String? inValue) {
                                              inValue =
                                                  inValue?.replaceAll(" ", "");
                                              if (inValue?.length == 0) {
                                                return "Пожалуйста, выберите должность";
                                              }
                                              return null;
                                            },
                                            onSaved: (String? inValue) {
                                              this._fields.work = inValue!;
                                            },
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                hintText: "Должность",
                                                labelText: "Должность",
                                                labelStyle: TextStyle(
                                                    color: Colors.yellow),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.yellow),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.yellow,
                                                      width: 2.0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                ),
                                                fillColor: Colors.yellow),
                                          ),
                                        ),
                                      ),
                                    ])),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Center(
                                    child: ButtonTheme(
                                      minWidth: 100.0,
                                      height: 50.0,
                                      child: RaisedButton(
                                        color: Colors.yellow,
                                        onPressed: () {
                                          if (key.currentState!.validate()) {
                                            key.currentState?.save();
                                            return _fields.sendRequest(
                                                id,
                                                _fields.surname,
                                                _fields.name,
                                                _fields.patronymic,
                                                _fields.date,
                                                context);
                                          }
                                        },
                                        child: const Text(
                                          "Обновить",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  )),
                            )
                          ]))
                    ])))));
  }
}

class Fields {
  late String surname = "";
  late String name = "";
  late String patronymic = "";
  late String date = "";
  late String work = "";

  sendRequest(String id, String surname, String name, String patronymic,
      String date, BuildContext context) async {
    var headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyIiwicm9sZSI6WyJVU0VSIl0sImV4cCI6MTY2MjMxODYyMSwiaWF0IjoxNjYxMjM4NjIxfQ.HHgDs1CP19oC0wxyzPmaDKIcU_MFeON8tHJZT7FqO80'
    };
    var request =
        http.Request('PATCH', Uri.parse('http://localhost:8086/people/' + id));
    request.body = json.encode({
      "surname": surname,
      "name": name,
      "patronymic": patronymic,
      "date": date
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Navigator.pop(context);
    } else {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
        content: const Text('Ошибка. Не удалось выполнить операцию!'),
      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
