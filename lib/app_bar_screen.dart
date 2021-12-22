import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Демо AppBar"),
          actions: <Widget>[
            IconButton(
                tooltip: "Домой", onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            TextButton(
              onPressed: () {},
              child: const Text("Профиль"),
              style: buttonStyle,
            )
          ],
        ),
        body: Center(child: Text("Контент")),
      ),
    );
  }
}
