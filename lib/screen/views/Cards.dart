import 'package:bankapp_task/bcodez/color.dart';
import 'package:flutter/material.dart';

import '../../bcodez/listcard.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cards',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 28),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 114,
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEDED),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "\$",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: '18,920.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 38,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.maxFinite,
                        height: 213,
                        decoration: BoxDecoration(
                          color: AppColor.orangeprimary,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orangeAccent.withOpacity(0.2),
                              spreadRadius: 15,
                              blurRadius: 15,
                              offset: Offset(7, 8),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: 0,
                          top: 10,
                          child: Container(
                              height: 190,
                              width: 190,
                              child: Image.asset(
                                'assets/images/vector1.png',
                                fit: BoxFit.fill,
                              ))),
                      Positioned(
                          left: 20,
                          top: 25,
                          child: Image.asset('assets/images/Vector.png')),
                      Positioned(
                        left: 20,
                        top: 90,
                        child: Text(
                          '****   ****   ****   0045',
                          style: TextStyle(
                              color: AppColor.whiteprimary,
                              fontWeight: FontWeight.normal,
                              fontSize: 26),
                        ),
                      ),
                      Positioned(
                          left: 20,
                          top: 135,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Card Holder',
                                      style: TextStyle(
                                          color: AppColor.whiteprimary,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      'Samuel Fedrick',
                                      style: TextStyle(
                                          color: AppColor.whiteprimary,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Expiry',
                                      style: TextStyle(
                                          color: AppColor.whiteprimary,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14),
                                    ),
                                    Text(
                                      '01 /03 /28',
                                      style: TextStyle(
                                          color: AppColor.whiteprimary,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              color: AppColor.whitesecondery,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                      Text('Expenses',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 24),),
                      Text('view all',style: TextStyle(
                                color: AppColor.orangeprimary,
                                fontWeight: FontWeight.bold,
                                    fontSize: 16),),
                                     ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: ListView(
                      padding: EdgeInsets.all(20.0),
                      children: [
                        buildCard(
                            'assets/images/image8.png', 'Netflix', '12 Oct 23 - 12.35pm', '-\$ 7.80'),
                        SizedBox(height: 10,),
                        buildCard('assets/images/image9.png', 'AirBnb', '02 Sep 23 - 10.29am','-\$ 180'),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
