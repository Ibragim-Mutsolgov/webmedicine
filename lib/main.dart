import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(Auth());

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authorize(context),
    );
  }
}

class Authorize extends StatefulWidget {
  const Authorize(BuildContext context, {Key? key}) : super(key: key);

  @override
  createState() => _Authorize();
}

class _Authorize extends State {

  String username = "";

  String password = "";

  GlobalKey<FormState> key = new GlobalKey();

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      Container(
                        width: 400,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          validator: (String? invalue) {
                            if(invalue?.length == 0) {
                              return "Пожалуйста, введите логин";
                            }
                            return null;
                          },
                          onSaved: (String? inValue) {
                            username = inValue!;
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Username",
                            labelText: "Username"
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        child: TextFormField(
                          obscureText: true,
                          validator: (String? inValue) {
                            if(inValue?.length == 0) {
                              return "Пожалуйста, введите пароль";
                            }
                            return null;
                          },
                          onSaved: (String? inValue) {
                            password = inValue!;
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "Password",
                            labelText: "Password"
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: RaisedButton(
                          child: Text("Войти", style: TextStyle(color: Colors.black),),
                          color: Colors.yellow,
                          onPressed: () {
                            // if(key.currentState!.validate()) {
                            //   key.currentState!.save();
                            //   print(username);
                            //   print(password);
                            //   if(username == "login" && password == "password"){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              // }
                            // }
                          },
                        )
                      )
                    ],
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
