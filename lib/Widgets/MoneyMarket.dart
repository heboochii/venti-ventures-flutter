import 'package:flutter/material.dart';
import 'package:account_widget_list/Models/accounts_model.dart';

class MoneyMarket extends StatefulWidget {
  @override
  _MoneyMarketState createState() => _MoneyMarketState();
}

class _MoneyMarketState extends State<MoneyMarket> {
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
          return accList.accountName == 'Money Market Account'
              ? Container(
                  // height: 4,
                  width: width * 0.95,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
