import 'package:flutter/material.dart';

class AllPatients extends StatefulWidget {
  const AllPatients({Key? key}) : super(key: key);

  @override
  State<AllPatients> createState() => _AllPatientsState();
}

class _AllPatientsState extends State<AllPatients> {

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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Align(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 52, 0, 20),
                          child: Text("Список пациентов", style: TextStyle(color: Colors.white, fontSize: 30),),
                        ),
                        const Divider(color: Colors.yellow, height: 0),
                        // 0, 30, 0, 30
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Scrollbar(
                                    scrollbarOrientation: ScrollbarOrientation.bottom,
                                    child: SizedBox(
                                      width: 2000,
                                      child: Functions().getTable(),
                                    ),
                                  )
                                ],
                              )
                          ),
                        )
                      ],
                    )
                )
            )
        )
    );
  }
}

class Functions {

  var size = 10;

  List<Column> columnCount = [
    Column(children: const [
      Text('Фамилия', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Имя', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Отчество', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Дата', style: TextStyle(fontSize: 20),),
      Text('рождения', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Пол', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Место', style: TextStyle(fontSize: 20),),
      Text('рождения', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Серия', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Номер', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Выдан', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Дата', style: TextStyle(fontSize: 20),),
      Text('выдачи', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Код', style: TextStyle(fontSize: 20),),
      Text('подразде -', style: TextStyle(fontSize: 20),),
      Text('ления', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Регион', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Пункт', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Район', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Улица', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Номер', style: TextStyle(fontSize: 20),),
      Text('амбула -', style: TextStyle(fontSize: 20),),
      Text('торной', style: TextStyle(fontSize: 20),),
      Text('карты', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Полис', style: TextStyle(fontSize: 20),)
    ]),
    Column(children: const [
      Text('Тип', style: TextStyle(fontSize: 20),),
      Text('полиса', style: TextStyle(fontSize: 20),)
    ]),
  ];

  var table = Table(
    textDirection: TextDirection.ltr,
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(color: Colors.white),
    columnWidths: Map.identity(),
    children: [
      TableRow(
          children: [
            Column(children: const [
              Text('', style: TextStyle(fontSize: 20),)
            ]),
          ]
      ),
    ],
  );

  getTable() {

    for(int i = 0; i < columnCount.length; i++) {
      table.children[0].children?.add(
          columnCount[i]
      );
    }
    List<TableRow> listRow = [];
    List<Column> tabColumn = [];

    for(int i = 1; i <= size; i++) {
      tabColumn.add(
        Column(children: [
          Text(i.toString(), style: const TextStyle(fontSize: 20),)
        ]),
      );

      for(int j = 0; j < columnCount.length; j++) {
        tabColumn.add(
          Column(children:const [
            Text('', style: TextStyle(fontSize: 20),)
          ]),
        );
      }
      listRow.add(TableRow(
          children: [tabColumn[0]]
      ));

      for(int j = 0; j < 1; j++) {
        for(int k = 1; k < tabColumn.length; k++) {
          listRow[0].children?.add(
              tabColumn[k]
          );
        }
      }
      table.children.add(listRow[0]);
      listRow = [];
      tabColumn = [];
    }
    return table;
  }
}
