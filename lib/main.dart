import 'package:account_widget_list/Screens/Accounts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity List',
      theme: ThemeData(
        // primarySwatch: Color(0xFF990002),
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
      ),
      home: Accounts(),
    );
  }
}
