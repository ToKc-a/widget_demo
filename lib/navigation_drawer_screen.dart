import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: SvgPicture.network(
                              "https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg"),
                        ),
                        Text("Навигация во Flutter"),
                      ],
                    )),
              ),
              ListTile(
                leading: Icon(Icons.one_k),
                title: Text('Каталог'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Переход в каталог")));
                },
              ),
              ListTile(
                leading: Icon(Icons.two_k),
                title: Text('Корзина'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Переход в корзину")));
                },
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text("Профиль"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Настройки'),
                onTap: () {
                  _messengerKey.currentState!.showSnackBar(
                      const SnackBar(content: Text("Переход в настройки")));
                },
              )
            ],
          ),
        ),
        body: const Center(
          child: Text("Содержимое экрана"),
        ),
      ),
    );
  }
}
