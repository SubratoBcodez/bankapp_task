import 'package:flutter/material.dart';

import 'color.dart';

Widget container(text, subtext, color, image) {
  return Stack(
    children: [
      Container(
        height: 184,
        width: 152,
        decoration: BoxDecoration(
          color: AppColor.whiteprimary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 15,
              blurRadius: 15,
              offset: Offset(9, 9),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 109, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                subtext,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 76,
        width: 64,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Image.asset(
          image,
          height: 27,
          width: 25,
        ),
      )
    ],
  );
}

Widget card(image, title) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Image.asset(image),
        SizedBox(height: 10,),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14),
        )
      ],
    ),
  );
}

Widget divider (){
  return Container(height: 90,width: 2,color: Colors.black12,);
}
