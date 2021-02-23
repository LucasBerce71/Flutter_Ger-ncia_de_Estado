import 'package:flutter/material.dart';
import 'package:gerencia_de_estado/change_notifier/change_notifier_page.dart';
import 'package:gerencia_de_estado/home.dart';
import 'package:gerencia_de_estado/setstate/set_state_page.dart';
import 'package:gerencia_de_estado/value_notifier/value_notifier_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/setState': (_) => SetStatePage(), 
        '/value-notifier': (_) => ValueNotifierPage(),
        '/change-notifier': (_) => ChangeNotifierPage()
      },
      home: Home(),
    );
  }
}