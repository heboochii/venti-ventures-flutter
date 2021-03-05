import 'package:flutter/material.dart';
import 'package:account_widget_list/Models/accounts_model.dart';

class HomeLoan extends StatefulWidget {
  @override
  _HomeLoanState createState() => _HomeLoanState();
}

class _HomeLoanState extends State<HomeLoan> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: accountList.length,
        itemBuilder: (BuildContext context, int index) {
          final AccountsList accList = accountList[index];
          return accList.accountName == 'Home Loan Account'
              ? Container(
                  // height: 4,
                  width: width * 0.95,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
