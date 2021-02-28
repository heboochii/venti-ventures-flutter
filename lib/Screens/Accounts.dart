import 'package:account_widget_list/Widgets/AccountListView.dart';
import 'package:account_widget_list/Widgets/ListTitle.dart';
import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff928EE4),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff928EE4),
      //   elevation: 0,
      // ),
      body: AccountListView(),
      // body: Column(
      //   children: [
      //     ListTitle(),
      //     AccountListView(),
      //   ],
      // ),
    );
  }
}
