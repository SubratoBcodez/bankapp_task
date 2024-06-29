import 'package:flutter/cupertino.dart';

import 'color.dart';

Widget accContainer (titletext){

  return Stack(
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
                titletext,
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
  );
}