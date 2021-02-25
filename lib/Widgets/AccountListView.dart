import 'package:flutter/material.dart';

class AccountListView extends StatefulWidget {
  @override
  _AccountListViewState createState() => _AccountListViewState();
}

class _AccountListViewState extends State<AccountListView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // return Container(
    //   height: 20,
    //   width: 20,
    //   color: Colors.white,
    // );
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            color: Colors.white,
          ),
          margin: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
          height: height * 0.16,
          width: 20,
          // color: Colors.white,
        ),
      ],
    );
  }
}
