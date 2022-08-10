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
        body: Center(
          child: Column(
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
                              validator: (String? inValue) {
                                if(inValue!.isEmpty) {
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
        )
    );
  }
}

// class Functions{
//
//   void showPleaseWait() {
//     showDialog(
//       context: model.rootBuildContext,
//       barrierDismissible: false,
//       builder: (BuildContext inDialogContext) {
//         return Dialog(
//           child: Container(width: 150, height: 150,
//             alignment: AlignmentDirectional.center,
//             decoration: BoxDecoration(color: Colors.blue[200]),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Center(child: SizedBox(height: 50, width: 50,
//                   child: CircularProgressIndicator(
//                     value: null, strokeWidth: 10,
//                   )
//                 )),
//                 Container(
//                   margin: EdgeInsets.only(top: 20),
//                   child: Center(
//                     child: Text(
//                       "Please wait, contacting server...",
//                       style: new TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       }
//     );
//   }
//
//   void hidePleaseWait() {
//     Navigator.of(model.rootBuildContext).pop();
//   }
//
//   void connectToServer(final BuildContext inMainBuildContext,
//       final Function inCallback) {
//     _io = SocketIOManager().createSocketIO(
//       serverURL, "/", query: "",
//       socketStatusCallBack : (inData) {
//         if(inData == "connect"){
//           _io.subscribe("newUser", newUser);
//           _io.subscride("created", created);
//           _io.subscribe("closed", closed);
//           _io.subscribe("joined", joined);
//           _io.subscribe("left", left);
//           _io.subscribe("kicked", kicked);
//           _io.subscribe("invited", invited);
//           _io.subscribe("posted", posted);
//           inCallback();
//         }
//       }
//     );
//     _io.init();
//     _io.connect();
//   }
// }