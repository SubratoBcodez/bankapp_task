import 'package:bankapp_task/bcodez/route.dart';
import 'package:bankapp_task/screen/home_page.dart';
import 'package:bankapp_task/screen/login_page.dart';
import 'package:bankapp_task/screen/pay_bill_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: login,
      getPages: getPages,
    );
  }
}


