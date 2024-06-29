import 'package:bankapp_task/bcodez/color.dart';
import 'package:flutter/material.dart';

import '../../bcodez/card.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitesecondery,
      body: Column(
        children: [
          // Expanded(
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     padding: EdgeInsets.all(16.0),
          //     children: [
          //       buildCard(Icons.swap_horiz, 'Fund Transfer', 'To acc to acc'),
          //       buildCard(Icons.receipt, 'Pay Bill Service', 'Govt. bills'),
          //       buildCard(Icons.check, 'Check Book', 'View/Request'),
          //
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Container(
                height: 184,
                width: 152,
                decoration: BoxDecoration(
                    color: AppColor.whiteprimary,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 109, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fund Transfer',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'Acc to Acc',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 76,
                width: 64,
                decoration: const BoxDecoration(
                    color: AppColor.orangeprimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Image.asset(
                  'assets/images/combined.png',
                  height: 27,
                  width: 25,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          buildAccountSection(),
        ],
      ),
    );
  }
}

Widget buildAccountSection() {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Text(
          'HIGH VALUE SAVINGS ACCOUNT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          '5472984671325',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 16.0),
        // Placeholder for QR Code
        Container(
          width: 100.0,
          height: 100.0,
          color: Colors.black12,
        ),
        TextButton(
          onPressed: () {},
          child: Text('Tap here to view your balance'),
        ),
      ],
    ),
  );
}
