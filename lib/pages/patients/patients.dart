import 'package:flutter/material.dart';
import 'package:webmedicine/pages/patients/all_patients.dart';
import '../../system_settings/navigation_drawer.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Patients createState() => Patients();
}

class Patients extends State<PatientsPage> {

  GlobalKey<FormState> key = GlobalKey();

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
                                      const AllPatients()));
                                },
                                child: Text("Список пациентов", style: TextStyle(fontSize: 20, color: Colors.black),),
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text("Запись на прием", style: TextStyle(color: Colors.white, fontSize: 30),),
                      ),
                      const Divider(color: Colors.yellow, height: 0),
                      // 0, 30, 0, 30
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Column(
                              children: [
                                Form(
                                    key: key,
                                    child: Padding(
                                      padding: EdgeInsets.zero,
                                      child: Column(
                                        children: [

                                          //Личные данные
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                            child: Text("Личные данные", style: TextStyle(fontSize: 25),),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 30),
                                            child: Row( // ФИО
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(right: 10),
                                                    child: Center(
                                                      child: Text("Фамилия:",
                                                          style: TextStyle(
                                                              fontSize: 25
                                                          )
                                                      ),
                                                    )
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                  child: SizedBox(
                                                    width: 150,
                                                    child: TextFormField(
                                                      cursorColor: Colors.yellow,
                                                      keyboardType: TextInputType.name,
                                                      // validator: (String? inValue) {},
                                                      // onSaved: (String? inValue) {},
                                                      textAlign: TextAlign.center,
                                                      decoration:  InputDecoration(
                                                          hintText: "Фамилия",
                                                          labelText: "Фамилия",
                                                          labelStyle: TextStyle(color: Colors.yellow),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          focusedBorder:OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          fillColor: Colors.yellow
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(right: 10),
                                                    child: Center(
                                                      child: Text("Имя:",
                                                          style: TextStyle(
                                                              fontSize: 25
                                                          )
                                                      ),
                                                    )
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                  child: SizedBox(
                                                    width: 150,
                                                    child: TextFormField(
                                                      cursorColor: Colors.yellow,
                                                      keyboardType: TextInputType.name,
                                                      // validator: (String? inValue) {},
                                                      // onSaved: (String? inValue) {},
                                                      textAlign: TextAlign.center,
                                                      decoration:  InputDecoration(
                                                          hintText: "Имя",
                                                          labelText: "Имя",
                                                          labelStyle: TextStyle(color: Colors.yellow),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          focusedBorder:OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          fillColor: Colors.yellow
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(right: 10),
                                                    child: Center(
                                                      child: Text("Отчество:",
                                                          style: TextStyle(
                                                              fontSize: 25
                                                          )
                                                      ),
                                                    )
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                  child: SizedBox(
                                                    width: 150,
                                                    child: TextFormField(
                                                      cursorColor: Colors.yellow,
                                                      keyboardType: TextInputType.name,
                                                      // validator: (String? inValue) {},
                                                      // onSaved: (String? inValue) {},
                                                      textAlign: TextAlign.center,
                                                      decoration:  InputDecoration(
                                                          hintText: "Отчество",
                                                          labelText: "Отчество",
                                                          labelStyle: TextStyle(color: Colors.yellow),
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          focusedBorder:OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                            borderRadius: BorderRadius.circular(7.0),
                                                          ),
                                                          fillColor: Colors.yellow
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 30),
                                            child: Row( // Дата, место рождения и пол
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Дата рождения:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 200,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Дата рождения",
                                                            labelText: "Дата рождения",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Пол:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Пол",
                                                            labelText: "Пол",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Место рождения:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 200,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Место рождения",
                                                            labelText: "Место рождения",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),

                                          //Паспорт
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 30),
                                            child: Text("Паспорт", style: TextStyle(fontSize: 25),),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 30),
                                            child: Row( // Серия, номер, выдан, дата выдачи, код подразделения
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Серия:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Серия",
                                                            labelText: "Серия",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Номер:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Номер",
                                                            labelText: "Номер",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Выдан:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Выдан",
                                                            labelText: "Выдан",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Дата выдачи:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Дата выдачи",
                                                            labelText: "Дата выдачи",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Код подразделения:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 200,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Код подразделения",
                                                            labelText: "Код подразделения",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),

                                          //Регион
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                            child: Text("Место жительства", style: TextStyle(fontSize: 25),),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Регион:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Регион",
                                                            labelText: "Регион",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Пункт:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Пункт",
                                                            labelText: "Пункт",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Район:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Район",
                                                            labelText: "Район",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Улица:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Улица",
                                                            labelText: "Улица",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),

                                          //Данные пациента
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                            child: Text("Данные пациента", style: TextStyle(fontSize: 25),),
                                          ),
                                          Padding(padding: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Номер амбулаторной карты:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Номер амбулаторной карты",
                                                            labelText: "Номер амбулаторной карты",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Полис:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Полис",
                                                            labelText: "Полис",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(right: 10),
                                                      child: Center(
                                                        child: Text("Тип полиса:",
                                                            style: TextStyle(
                                                                fontSize: 25
                                                            )
                                                        ),
                                                      )
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 5, 20, 0),
                                                    child: SizedBox(
                                                      width: 150,
                                                      child: TextFormField(
                                                        cursorColor: Colors.yellow,
                                                        keyboardType: TextInputType.name,
                                                        // validator: (String? inValue) {},
                                                        // onSaved: (String? inValue) {},
                                                        textAlign: TextAlign.center,
                                                        decoration:  InputDecoration(
                                                            hintText: "Тип полиса",
                                                            labelText: "Тип полиса",
                                                            labelStyle: TextStyle(color: Colors.yellow),
                                                            border: OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            focusedBorder:OutlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.yellow, width: 2.0),
                                                              borderRadius: BorderRadius.circular(7.0),
                                                            ),
                                                            fillColor: Colors.yellow
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),

                                          //Сохранить
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
                                                      onPressed: () {},
                                                      child: Text("Добавить", style: TextStyle(fontSize: 20, color: Colors.black),),
                                                    ),
                                                  ),
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                ),
                              ],
                            )
                        )
                      )
                    ],
                  )
              )
          )
      )
    );
  }
}