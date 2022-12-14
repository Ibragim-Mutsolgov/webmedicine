import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Patients createState() => Patients();
}

class Patients extends State<PatientsPage> {
  var surname = "";
  var name = "";
  var patronymic = "";
  TextEditingController date = TextEditingController();
  var gender;
  var placeBirth = "";
  var passportSeries = "";
  var passportNumber = "";
  var passportIssue = "";
  TextEditingController dateIssue = TextEditingController();
  var departmentCode = "";
  var region = "";
  var station = "";
  var locality = "";
  var street = "";
  GlobalKey<FormState> key = GlobalKey();
  List<String> personTypes = ["Мужской", "Женский"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Пациенты',
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
            scrollDirection: Axis.vertical,
            child: Align(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                          child: Text(
                            "Запись на прием",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        const Divider(color: Colors.yellow, height: 0),
                        // 0, 30, 0, 30
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                child: Column(
                                  children: [
                                    Form(
                                        key: key,
                                        child: Padding(
                                          padding: EdgeInsets.zero,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 30, 0, 30),
                                                child: Text(
                                                  "Личные данные",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 30),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    padding(
                                                        "Фамилия",
                                                        "Пожалуйста, введите фамилию",
                                                        surname,
                                                        "surname"),
                                                    padding(
                                                        "Имя",
                                                        "Пожалуйста, введите имя",
                                                        name,
                                                        "name"),
                                                    padding(
                                                        "Отчество",
                                                        "Пожалуйста, введите отчество",
                                                        patronymic,
                                                        "patronymic"),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 30),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      paddingWithDate(
                                                          "Дата рождения",
                                                          date),
                                                      dropDownList(
                                                          personTypes,
                                                          const Size(150, 50),
                                                          gender,
                                                          'Пожалуйста укажите пол',
                                                          'Пол'),
                                                      padding(
                                                          "Место рождения",
                                                          "Пожалуйста, укажите место рождения",
                                                          placeBirth,
                                                          "placeBirth"),
                                                    ]),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 30),
                                                child: Text(
                                                  "Паспорт",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 30),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      padding(
                                                          "Серия",
                                                          "Пожалуйста, введите серию паспорта",
                                                          passportSeries,
                                                          "passportSeries"),
                                                      padding(
                                                          "Номер",
                                                          "Пожалуйста, введите номер паспорта",
                                                          passportNumber,
                                                          "passportNumber"),
                                                    ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      padding(
                                                          "Код подразделения",
                                                          "Пожалуйста, укажите код подразделения",
                                                          departmentCode,
                                                          "departmentCode"),
                                                      paddingWithDate(
                                                          "Дата выдачи",
                                                          dateIssue),
                                                    ]),
                                              ),
                                              padding(
                                                  "Выдан",
                                                  "Пожалуйста, укажите кем выдан паспорт",
                                                  passportIssue,
                                                  "passportIssue"),
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 30, 0, 30),
                                                child: Text(
                                                  "Место жительства",
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      padding(
                                                          "Регион",
                                                          "Пожалуйста, укажите регион",
                                                          region,
                                                          "region"),
                                                      padding(
                                                          "Пункт",
                                                          "Пожалуйста, укажите пункт",
                                                          station,
                                                          "station"),
                                                    ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      padding(
                                                          "Район",
                                                          "Пожалуйста, укажите район",
                                                          locality,
                                                          "locality"),
                                                      padding(
                                                          "Улица",
                                                          "Пожалуйста, укажите улицу",
                                                          street,
                                                          "street"),
                                                    ]),
                                              ),

                                              //Сохранить
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 20, 0, 0),
                                                    child: Center(
                                                      child: ButtonTheme(
                                                        minWidth: 100.0,
                                                        height: 50.0,
                                                        child: RaisedButton(
                                                          color: Colors.yellow,
                                                          onPressed: () {
                                                            if (key
                                                                .currentState!
                                                                .validate()) {
                                                              key.currentState
                                                                  ?.save();
                                                              print(surname);
                                                              print(name);
                                                              print(patronymic);
                                                              print(date.text);
                                                              print(gender);
                                                              print(placeBirth);
                                                              print(
                                                                  passportSeries);
                                                              print(
                                                                  passportNumber);
                                                              print(
                                                                  passportIssue);
                                                              print(dateIssue
                                                                  .text);
                                                              print(
                                                                  departmentCode);
                                                              print(region);
                                                              print(station);
                                                              print(locality);
                                                              print(street);
                                                            }
                                                          },
                                                          child: const Text(
                                                            "Добавить",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                        )),
                                  ],
                                )))
                      ],
                    )))));
  }

  Widget dropDownList(List<String> items, Size size, String? value,
      String validatorText, String hintText) {
    if (items.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.yellow),
                isDense: true,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.yellow, width: 2.0),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                fillColor: Colors.yellow),
            validator: (String? inValue) {
              if (inValue == null) {
                return validatorText;
              }
              return null;
            },
            hint: Text(
              hintText,
              style: const TextStyle(color: Colors.yellow),
            ),
            value: value,
            isDense: true,
            onChanged: (newValue) {
              setState(() => {value = newValue});
            },
            onSaved: (String? inValue) {
              switch (hintText) {
                case "Пол":
                  this.gender = inValue!;
                  break;
              }
            },
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: const TextStyle(color: Colors.yellow)));
            }).toList(),
          ),
        ),
      );
    }
    return const Text("Не удалось загрузить");
  }

  Widget padding(String key, String value, String? name, String objectName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
      child: SizedBox(
        width: 150,
        child: TextFormField(
          cursorColor: Colors.yellow,
          keyboardType: TextInputType.name,
          validator: (String? inValue) {
            inValue = inValue?.replaceAll(" ", "");
            if (inValue?.length == 0) {
              return value;
            }
            return null;
          },
          onSaved: (String? inValue) {
            switch (objectName) {
              case "surname":
                surname = inValue!;
                break;
              case "name":
                this.name = inValue!;
                break;
              case "patronymic":
                patronymic = inValue!;
                break;
              case "placeBirth":
                placeBirth = inValue!;
                break;
              case "passportSeries":
                passportSeries = inValue!;
                break;
              case "passportNumber":
                passportNumber = inValue!;
                break;
              case "departmentCode":
                departmentCode = inValue!;
                break;
              case "passportIssue":
                passportIssue = inValue!;
                break;
              case "region":
                region = inValue!;
                break;
              case "station":
                station = inValue!;
                break;
              case "locality":
                locality = inValue!;
                break;
              case "street":
                street = inValue!;
                break;
            }
            name = inValue!;
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: key,
              labelText: key,
              labelStyle: const TextStyle(color: Colors.yellow),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(7.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.yellow, width: 2.0),
                borderRadius: BorderRadius.circular(7.0),
              ),
              fillColor: Colors.yellow),
        ),
      ),
    );
  }

  Widget paddingWithDate(String name, TextEditingController date) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
      child: SizedBox(
          width: 150,
          child: TextFormField(
            controller: date,
            validator: (String? inValue) {
              inValue = inValue?.replaceAll(" ", "");
              if (inValue?.length == 0) {
                return "Пожалуйста, укажите дату";
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: name,
                labelText: name,
                labelStyle: const TextStyle(color: Colors.yellow),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.yellow, width: 2.0),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                fillColor: Colors.yellow),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2100));
              if (pickedDate != null) {
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                setState(() {
                  date.text = formattedDate;
                });
              } else {}
            },
          )),
    );
  }
}
