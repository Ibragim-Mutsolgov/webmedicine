import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Главная страница",
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Регистратура", style: TextStyle(color: Colors.black),),
            centerTitle: true,
            backgroundColor: Colors.yellow,
            iconTheme: const IconThemeData(
                color: Colors.black
            ),
          ),
          drawer: Drawer(
            //backgroundColor: Colors.black,
            child: Column(
              children: [
                Column(
                  children: const [
                    Text("Врач", style: TextStyle(
                        fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text("Пациент", style: TextStyle(
                        fontSize: 25, color: Colors.white
                    ),)
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonTheme(
                        minWidth: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          color: Colors.yellow,
                          onPressed: () { Navigator.pop(context); },
                          child: Text("Выйти", style: TextStyle(fontSize: 20, color: Colors.black),),
                        ),
                      )
                    ]
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        color: Colors.yellow,
                        onPressed: () { Navigator.pop(context); },
                        child: Text("Выйти", style: TextStyle(fontSize: 20, color: Colors.black)),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Здоровое поколение")
                ],
              )
            ],
          )
      ),
    );
  }
}