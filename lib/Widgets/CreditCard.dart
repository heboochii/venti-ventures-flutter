import 'package:flutter/material.dart';
import 'package:account_widget_list/Models/accounts_model.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double _animatedHeight = 100.0;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: accountList.length,
        itemBuilder: (BuildContext context, int index) {
          final AccountsList accList = accountList[index];
          return accList.accountName == 'Credit Card Account'
              ? GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: width * 0.95,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 2,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(accList.accountName),
                        Text(accList.accountName),
                        Text(accList.accountName),
                      ],
                    ),
                  ),
                )
              : Container();
        },
      ),
    );
  }
}
