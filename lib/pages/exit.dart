import 'package:flutter/material.dart';
import 'home.dart';

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
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Авторизация",
                        style: TextStyle(
                            fontSize: 35
                        ),
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
                        SizedBox(
                          width: 400,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            validator: (String? invalue) {
                              if(invalue!.isEmpty) {
                                return "Пожалуйста, введите логин";
                              }
                              return null;
                            },
                            onSaved: (String? inValue) {
                              username = inValue!;
                            },
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: "Username",
                                labelText: "Username"
                            ),
                          ),
                        ),
                        SizedBox(
                            width: 400,
                            child: TextFormField(
                              obscureText: true,
                              validator: (String? inValue) {
                                if(inValue!.isEmpty) {
                                  return "Пожалуйста, введите пароль";
                                }
                                return null;
                              },
                              onSaved: (String? inValue) {
                                password = inValue!;
                              },
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  hintText: "Password",
                                  labelText: "Password"
                              ),
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.yellow
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                              },
                              child: const Text("Войти", style: TextStyle(color: Colors.black),),
                            )
                        )
                      ],
                    )
                )
              ],
            ),
          ],
        ),
    );
  }
}