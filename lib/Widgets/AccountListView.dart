import 'package:flutter/material.dart';
import 'package:account_widget_list/Models/accounts_model.dart';

class AccountListView extends StatefulWidget {
  @override
  _AccountListViewState createState() => _AccountListViewState();
}

class _AccountListViewState extends State<AccountListView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: accountList.length,
        itemBuilder: (BuildContext context, int index) {
          final AccountsList accList = accountList[index];
          return accList.accountName == 'Credit Card Account'
              ? Container(
                  height: 4,
                  width: width * 0.7,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
