import 'package:account_widget_list/Models/accounts_model.dart';
import 'package:account_widget_list/Widgets/AccountListView.dart';
import 'package:account_widget_list/Widgets/CreditCard.dart';
import 'package:account_widget_list/Widgets/HomeLoan.dart';
import 'package:account_widget_list/Widgets/Investment.dart';
import 'package:account_widget_list/Widgets/ListTitle.dart';
import 'package:account_widget_list/Widgets/MoneyMarket.dart';
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
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text('Credit Card Account',
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 3.2,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
              ),
              CreditCard(),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Home Loan Account',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 3.2,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              HomeLoan(),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Money Market Account',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 3.2,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              MoneyMarket(),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Investment Account',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 3.2,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Investment(),
            ],
          ),
        ),
      ),
    );
  }
}
