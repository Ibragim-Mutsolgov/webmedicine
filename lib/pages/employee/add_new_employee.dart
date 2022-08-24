import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {

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
        ),
        body:  SingleChildScrollView(
          child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.right,
              trackVisibility: true,
              child: Align(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                            child: Text("Добавить сотрудника", style: TextStyle(color: Colors.white, fontSize: 30),),
                          ),
                          const Divider(color: Colors.yellow, height: 0),
                          Form(
                              key: key,
                              child: Padding(
                                padding: EdgeInsets.zero,
                                child: Column(
                                  children: [

                                    //Личные данные
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                      child: Text("Личные данные", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(padding: const EdgeInsets.only(bottom: 30),
                                      child: Row( // ФИО
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
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
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                    labelStyle: const TextStyle(color: Colors.yellow),
                                                    border: OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow),
                                                      borderRadius: BorderRadius.circular(7.0),
                                                    ),
                                                    focusedBorder:OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                      borderRadius: BorderRadius.circular(7.0),
                                                    ),
                                                    fillColor: Colors.yellow
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
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
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                    labelStyle: const TextStyle(color: Colors.yellow),
                                                    border: OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow),
                                                      borderRadius: BorderRadius.circular(7.0),
                                                    ),
                                                    focusedBorder:OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                      borderRadius: BorderRadius.circular(7.0),
                                                    ),
                                                    fillColor: Colors.yellow
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
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
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                    labelStyle: const TextStyle(color: Colors.yellow),
                                                    border: OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow),
                                                      borderRadius: BorderRadius.circular(7.0),
                                                    ),
                                                    focusedBorder:OutlineInputBorder(
                                                      borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    Padding(padding: const EdgeInsets.only(bottom: 30),
                                      child: Row( // Дата, место рождения и пол
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(padding: EdgeInsets.only(right: 10),
                                                child: Center(
                                                  child: Text("Пол:",
                                                      style: TextStyle(
                                                          fontSize: 25
                                                      )
                                                  ),
                                                )
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 30),
                                      child: Text("Паспорт", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(padding: const EdgeInsets.only(bottom: 30),
                                      child: Row( // Серия, номер, выдан, дата выдачи, код подразделения
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    Padding(padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    Padding(padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                      child: Text("Место жительства", style: TextStyle(fontSize: 25),),
                                    ),
                                    Padding(padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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
                                    Padding(padding: const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      fillColor: Colors.yellow
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Padding(
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
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
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
                                                      labelStyle: const TextStyle(color: Colors.yellow),
                                                      border: OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow),
                                                        borderRadius: BorderRadius.circular(7.0),
                                                      ),
                                                      focusedBorder:OutlineInputBorder(
                                                        borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
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

                                    //Должность
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                      child: Text("Должность", style: TextStyle(fontSize: 25),),
                                    ),

                                    //Сохранить
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Center(
                                            child: ButtonTheme(
                                              minWidth: 100.0,
                                              height: 50.0,
                                              child: RaisedButton(
                                                color: Colors.yellow,
                                                onPressed: () {},
                                                child: const Text("Добавить", style: TextStyle(fontSize: 20, color: Colors.black),),
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
          ),
        )
    );
  }
}
