import 'package:bankapp_task/bcodez/color.dart';
import 'package:bankapp_task/bcodez/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(16.0),
                children: [
                  container('Fund Transfer', 'Acc to Acc',
                      AppColor.orangeprimary, 'assets/images/combined.png'),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: (){Get.toNamed(paybill);},
                    child: container('Play Bill Service', 'Govt. bill',
                        Colors.blueAccent, 'assets/images/doller.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  container('Check Bills', 'View/blog cheque', Colors.green,
                      'assets/images/icon_color.png')
                ],
              ),
            ),
          ),
          buildAccountSection(),
        ],
      ),
    );
  }
}

Widget buildAccountSection() {
  return Container(
    height: 285,
    width: 370,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: AppColor.whiteprimary,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 15,
          blurRadius: 15,
          offset: Offset(9, 9),
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'HIGH VALUE SAVINGS ACCOUNT',
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          '5472984671325',
          style: TextStyle(
              fontSize: 26.0, fontWeight: FontWeight.bold, letterSpacing: 4),
        ),
        SizedBox(height: 46.0),
        // Placeholder for QR Code
        SizedBox(
          width: 185,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/qrcode.png',
                height: 40,
                width: 124,
              ),
              Image.asset(
                'assets/images/face_id.png',
                height: 40,
                width: 40,
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Tap here to view your balance',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
        ),
      ],
    ),
  );
}
