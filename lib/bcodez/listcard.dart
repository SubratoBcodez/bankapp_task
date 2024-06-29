

import 'package:flutter/material.dart';

import 'color.dart';

Widget buildCard(String image, String title, String subtitle, String price) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(color: AppColor.whiteprimary,
        borderRadius: BorderRadius.circular(10)
    ),
    child: ListTile(
      leading: CircleAvatar(
          radius: 25,
          child: Image.asset(image,fit: BoxFit.cover,height: 50,)),
      title: Text(title,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18),),
      subtitle: Text(subtitle,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 16),),
      trailing: Text(price,style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 24),),
      onTap: () {},
    ),
  );
}

Widget buildlistCard(String image, String title, String subtitle) {
  return Container(

    padding: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(color: AppColor.whiteprimary,
        borderRadius: BorderRadius.circular(10)
    ),
    child: ListTile(
      leading: CircleAvatar(
          radius: 25,
          child: Image.asset(image,fit: BoxFit.cover,height: 50,)),
      title: Text(title,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17),),
      subtitle: Text(subtitle,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 14),),

      onTap: () {},
    ),
  );
}