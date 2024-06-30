import 'package:bankapp_task/bcodez/color.dart';
import 'package:bankapp_task/bcodez/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../bcodez/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberId = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 30, top: 5),
          child: GestureDetector(
            onTap: () {},
            child: SizedBox(
              width: 50,
              height: 50,
              child: Column(
                children: [
                  Text(
                    'EN',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                  )
                ],
              ),
            ),
          ),
        ),
        title: Text(
          'LOGO',
          style: TextStyle(
              color: AppColor.orangeprimary, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: AppColor.whitesecondery,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.42,
              width: double.maxFinite,
              child: Container(
                child: Image.asset('assets/images/History.png'),
                decoration: BoxDecoration(color: AppColor.whitesecondery),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    textFormField(_idController, 'Enter Account ID', false),
                    SizedBox(
                      height: 30,
                    ),
                    textFormField(
                        _passwordController, 'Enter Your Password', true),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: rememberId,
                              onChanged: (value) {
                                setState(() {
                                  rememberId = value!;
                                });
                              },
                            ),
                            Text(
                              'Remember ID',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            // Forgot password logic
                          },
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(home);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.orangeprimary,
                          shadowColor: Colors.orangeAccent,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 20,
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Sign Up Link with RichText
                    GestureDetector(
                      onTap: () {

                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black54,fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign Up!',
                              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
