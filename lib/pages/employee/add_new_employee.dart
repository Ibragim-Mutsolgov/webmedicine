import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {

  GlobalKey<FormState> key = GlobalKey();

  _Fields fields = _Fields();

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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                            child: SizedBox(
                                              width: 150,
                                              child: TextFormField(
                                                cursorColor: Colors.yellow,
                                                keyboardType: TextInputType.name,
                                                validator: (String? inValue) {
                                                  inValue = inValue?.replaceAll(" ", "");
                                                  if(inValue?.length == 0) {
                                                    return "Пожалуйста, введите фамилию";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (String? inValue) {
                                                  this.fields.surname = inValue!;
                                                },
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                            child: SizedBox(
                                              width: 150,
                                              child: TextFormField(
                                                cursorColor: Colors.yellow,
                                                keyboardType: TextInputType.name,
                                                validator: (String? inValue) {
                                                  inValue = inValue?.replaceAll(" ", "");
                                                  if(inValue?.length == 0) {
                                                    return "Пожалуйста, введите имя";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (String? inValue) {
                                                  this.fields.name = inValue!;
                                                },
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
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                            child: SizedBox(
                                              width: 150,
                                              child: TextFormField(
                                                cursorColor: Colors.yellow,
                                                keyboardType: TextInputType.name,
                                                validator: (String? inValue) {
                                                  inValue = inValue?.replaceAll(" ", "");
                                                  if(inValue?.length == 0) {
                                                    return "Пожалуйста, введите отчество";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (String? inValue) {
                                                  this.fields.patronymic = inValue!;
                                                },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 200,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, выберите дату";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.date = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, выберите пол";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.gender = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 200,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите место рождения";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.placeBirth = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, введите серию паспорта";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.passportSeries = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, введите номер паспорта";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.passportNumber = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите кем выдан паспорт";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.passportIssue = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите дату выдачи паспорта";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.dateIssue = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 200,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите код подразделения";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.departmentCode = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите регион";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.region = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите пункт";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.station = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите район";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.locality = inValue!;
                                                  },
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
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                              child: SizedBox(
                                                width: 150,
                                                child: TextFormField(
                                                  cursorColor: Colors.yellow,
                                                  keyboardType: TextInputType.name,
                                                  validator: (String? inValue) {
                                                    inValue = inValue?.replaceAll(" ", "");
                                                    if(inValue?.length == 0) {
                                                      return "Пожалуйста, укажите улицу";
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (String? inValue) {
                                                    this.fields.street = inValue!;
                                                  },
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
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                                      child: SizedBox(
                                        width: 150,
                                        child: TextFormField(
                                          cursorColor: Colors.yellow,
                                          keyboardType: TextInputType.name,
                                          validator: (String? inValue) {
                                            inValue = inValue?.replaceAll(" ", "");
                                            if(inValue?.length == 0) {
                                              return "Пожалуйста, укажите должность";
                                            }
                                            return null;
                                          },
                                          onSaved: (String? inValue) {
                                            this.fields.street = inValue!;
                                          },
                                          textAlign: TextAlign.center,
                                          decoration:  InputDecoration(
                                              hintText: "Должность",
                                              labelText: "Должность",
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
                                                onPressed: () {
                                                  if(key.currentState!.validate()) {
                                                    key.currentState?.save();
                                                    print(fields.surname);
                                                    print(fields.name);
                                                    print(fields.patronymic);
                                                    print(fields.date);
                                                    print(fields.gender);
                                                    print(fields.placeBirth);
                                                    print(fields.passportSeries);
                                                    print(fields.passportNumber);
                                                    print(fields.passportIssue);
                                                    print(fields.dateIssue);
                                                    print(fields.departmentCode);
                                                    print(fields.region);
                                                    print(fields.station);
                                                    print(fields.locality);
                                                    print(fields.street);
                                                  }
                                                },
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
    );
  }
}

class _Fields {
  late String surname;
  late String name;
  late String patronymic;
  late String date;
  late String gender;
  late String placeBirth;
  late String passportSeries;
  late String passportNumber;
  late String passportIssue;
  late String dateIssue;
  late String departmentCode;
  late String region;
  late String station;
  late String locality;
  late String street;

  addEmployee() async {

  }
}
