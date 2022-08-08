import 'package:flutter/material.dart';
import '../system_settings/NavigationDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Регистратура", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        shadowColor: Colors.yellow,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/exit');
            },
            highlightColor: Colors.black12,
            child: const Icon(Icons.exit_to_app, color: Colors.black),
          ),
        ],
      ),
      drawer: NavigationDrawer(context),
      body: Align(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text("Таблица", style: TextStyle(color: Colors.white, fontSize: 30),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Table(
                children: [
                  TableRow(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            height: 30,
                            color: Colors.white,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Часы", style: TextStyle(color: Colors.black), textAlign: TextAlign.center)
                            )
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              height: 30,
                              color: Colors.white,
                            ),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                            height: 30,
                            color: Colors.white,
                          ),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}