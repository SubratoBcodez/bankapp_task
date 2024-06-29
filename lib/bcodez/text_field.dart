import 'package:bankapp_task/bcodez/color.dart';
import 'package:flutter/material.dart';

Widget textFormField(controller,hintText,obscureText) {
  return TextFormField(
    controller: controller,
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
    obscureText: obscureText,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.only(bottom: 22),
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 16),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: AppColor.orangeprimary, style: BorderStyle.solid, width: 1.5)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey, style: BorderStyle.solid, width: 1.5))),
  );
}
