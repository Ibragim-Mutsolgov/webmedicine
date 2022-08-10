import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {

  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.yellow
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Клиника', style: TextStyle(color: Colors.black, fontSize: 17), textAlign: TextAlign.left),
                  Text('Здоровое поколение', style: TextStyle(color: Colors.black, fontSize: 17), textAlign: TextAlign.left)
                ],
              ),
            )
        ),
        const Divider(color: Colors.white, height: 0),
        ListTile(
          selectedTileColor:  Colors.yellow,
          leading: const Icon(
            Icons.home,
            color: Colors.yellow,
          ),
          title: const Text('Регистратура'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/home');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.people,
            color: Colors.yellow,
          ),
          title: const Text('Сотрудники'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/employee');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.heart_broken,
            color: Colors.yellow,
          ),
          title: const Text('Пациенты'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/patients');
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Colors.yellow,
          ),
          title: const Text('Параметры'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/settings');
          },
        ),
        const Divider(color: Colors.white, height: 0),
        ListTile(
          leading: const Icon(
            Icons.exit_to_app,
            color: Colors.yellow,
          ),
          title: const Text('Выйти'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/exit');
          },
        ),
      ],
    )
  );
}