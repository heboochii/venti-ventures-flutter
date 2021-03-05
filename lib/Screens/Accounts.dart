import 'package:account_widget_list/Widgets/AccountListView.dart';
import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeee4),
      appBar: AppBar(
        backgroundColor: Color(0xff928EE4),
        title: Text('Heba Nazim\'s Account List'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AccountListView(),
            ],
          ),
        ),
      ),
    );
  }
}
