import 'package:flutter/material.dart';
import '../home/home.dart';

class ExitPage extends StatefulWidget {
  const ExitPage({Key? key}) : super(key: key);

  @override
  ExitState createState() => ExitState();
}

class ExitState extends State<ExitPage> {
  String username = "";

  String password = "";

  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Авторизация",
                      style: TextStyle(fontSize: 35, color: Colors.yellow),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Form(
                  key: key,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 400,
                          child: TextFormField(
                            cursorColor: Colors.yellow,
                            keyboardType: TextInputType.name,
                            validator: (String? inValue) {
                              if (inValue!.isEmpty) {
                                return "Пожалуйста, введите логин";
                              }
                              return null;
                            },
                            onSaved: (String? inValue) {
                              username = inValue!;
                            },
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              fillColor: Colors.yellow,
                              hintText: "Логин",
                              labelText: "Логин",
                              labelStyle: const TextStyle(
                                  color: Colors.yellow, fontSize: 18),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.yellow),
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.yellow, width: 2.0),
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: SizedBox(
                            width: 400,
                            child: TextFormField(
                              cursorColor: Colors.yellow,
                              obscureText: true,
                              validator: (String? inValue) {
                                if (inValue!.isEmpty) {
                                  return "Пожалуйста, введите пароль";
                                }
                                return null;
                              },
                              onSaved: (String? inValue) {
                                password = inValue!;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Пароль",
                                labelText: "Пароль",
                                labelStyle: const TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.yellow),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.yellow, width: 2.0),
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                              ),
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.yellow,
                                shadowColor: Colors.yellow,
                                minimumSize: const Size(100, 50)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: const Text(
                              "Войти",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ))
                    ],
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
