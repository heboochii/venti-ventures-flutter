import 'package:expansion_card/expansion_card.dart';
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

    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: new EdgeInsets.all(10),
        itemCount: accountList.length,
        itemBuilder: (BuildContext context, int index) {
          final AccountsList accList = accountList[index];
          return Container(
            height: 130,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: accList.accountName == 'Credit Card Account'
                  ? Colors.amber
                  : accList.accountName == 'Home Loan Account'
                      ? Colors.pink
                      : accList.accountName == 'Money Market Account'
                          ? Colors.orange
                          : Colors.deepPurple[300],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: ExpansionCard(
              backgroundColor: Colors.white24,
              borderRadius: 10,
              title: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3,
                  vertical: 5,
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    accList.accountName == 'Credit Card Account'
                        ? Icon(
                            Icons.credit_card,
                            size: 45,
                            color: Colors.white,
                          )
                        : accList.accountName == 'Home Loan Account'
                            ? Icon(
                                Icons.home,
                                size: 45,
                                color: Colors.white,
                              )
                            : accList.accountName == 'Money Market Account'
                                ? Icon(
                                    Icons.attach_money_sharp,
                                    size: 45,
                                    color: Colors.white,
                                  )
                                : accList.accountName == 'Investment Account'
                                    ? Icon(
                                        Icons.money_rounded,
                                        size: 45,
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        Icons.money_rounded,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(accList.accountName,
                            style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start),
                        SingleChildScrollView(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                accList.accountNumber.toString(),
                              ),
                              SizedBox(width: 78),
                              Text(
                                accList.currencyIsoCode +
                                    ' ' +
                                    accList.value.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Account Owner: ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      accList.owner,
                      style: TextStyle(
                        color: Colors.white,
                        // color: Color.fromRGBO(106, 201, 213, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'iban: ',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      accList.iban,
                      style: TextStyle(
                        color: Colors.white,
                        // color: Color.fromRGBO(106, 201, 213, 1),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   child: Text(
                //     'iban: ' + accList.iban,
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       color: Colors.white,

                //       // color: Color.fromRGBO(106, 201, 213, 1),
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
