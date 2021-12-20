import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0))
                        ),
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg")
                      ),
                      Text("Навигация во Flutter")
                    ],
                  )
                ),
              ),
              ListTile(
                leading: Icon(Icons.one_k),
                title: Text('Каталог'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.two_k),
                title: Text('Корзина'),
                onTap: () {},
              )
            ],
          ),
        ),
        body: Center(
          child: Text("Содержимое экрана"),
        )
        ,
      )
      ,
    );
  }
}
