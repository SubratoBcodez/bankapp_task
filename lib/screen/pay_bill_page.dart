import 'package:bankapp_task/bcodez/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../bcodez/color.dart';
import '../bcodez/listcard.dart';

class PayBillPage extends StatefulWidget {
  const PayBillPage({super.key});

  @override
  State<PayBillPage> createState() => _PayBillPageState();
}

class _PayBillPageState extends State<PayBillPage> {
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitesecondery,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.schedule,
                  color: Colors.blueAccent,
                  size: 18,
                ),
                Text(
                  'History',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColor.whiteprimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Pay Bill Service',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: _search,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    obscureText: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        contentPadding: EdgeInsets.only(bottom: 22),
                        hintText: 'Search here',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColor.orangeprimary,
                                style: BorderStyle.solid,
                                width: 1.5)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.5))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Save Organizations',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                      Text(
                        'manage (2)',
                        style: TextStyle(
                            color: AppColor.orangeprimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: ListView(
                    padding: EdgeInsets.all(15.0),
                    children: [
                      buildlistCard(
                          'assets/images/image8.png',
                          'California Water Service Co.',
                          'ID: 342464 | Last Paid: 12 Oct 23'),
                      SizedBox(
                        height: 10,
                      ),
                      buildlistCard(
                          'assets/images/image9.png',
                          'Southern Electricity',
                          'ID: 773544 | Last Paid: 20 Oct 23'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                          color: AppColor.orangeprimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(

                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          card('assets/icons/elctricity.png', 'Electricity'),divider(),card('assets/icons/water.png', 'Water'),divider(),card('assets/icons/gas.png', 'Gas')
                        ],
                      ),
                      Container(height: 2,width: 290,color: Colors.black12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          card('assets/icons/internet.png', 'Internet'),divider(),card('assets/icons/landline.png', 'Landline'),divider(),card('assets/icons/vehicle.png', 'Vehicle')
                        ],
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: double.maxFinite,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
