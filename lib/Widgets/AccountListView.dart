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
    // return Container(
    //   height: 20,
    //   width: 20,
    //   color: Colors.white,
    // );
    return ListView.builder(
      itemCount: accountList.length,
      itemBuilder: (BuildContext context, int index) {
        final AccountsList accList = accountList[index];
        return AnimatedContainer(
          // color: Colors.amber,
          height: 50,
          width: 50,
          duration: Duration(seconds: 10),
          margin: EdgeInsets.all(10),
          curve: Curves.fastOutSlowIn,
          decoration: accList.accountName == 'Credit Card Account'
              ? BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                )
              : accList.accountName == 'Home Loan Account'
                  ? BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    )
                  : accList.accountName == 'Money Market Account'
                      ? BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        )
                      : accList.accountName == 'Investment Account'
                          ? BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8),
                            )
                          : BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(8),
                            ),
        );

        // return Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       width: 0,
        //     ),
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(40),
        //     ),
        //     color: Colors.white,
        //   ),
        //   margin: EdgeInsets.only(top: 20, bottom: 10, left: 30, right: 30),
        //   height: height * 0.16,
        //   width: 20,
        //   child: Column(
        //     children: [
        //       Text(
        //         accList.accountName,
        //       )
        //     ],
        //   ),
        //   // color: Colors.white,
        // );
      },
    );
  }
}
