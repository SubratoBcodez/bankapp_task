import 'package:bankapp_task/screen/views/accounts.dart';
import 'package:flutter/material.dart';

import '../bcodez/color.dart';
import '../bcodez/tab_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Image.asset('assets/images/appBar_bg.png',fit: BoxFit.cover,),
          toolbarHeight: MediaQuery.of(context).size.height * 0.20,
          backgroundColor: AppColor.orangeprimary,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '29 Nov, 2023',

                  style: TextStyle(

                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                Text(
                  'Hi, Samuel Fedrick',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),

              ],
            ),
          ),

          centerTitle: false,
          actions: [
            IconButton(icon: Icon(Icons.notifications), color: AppColor.whiteprimary, onPressed: () {}),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(icon: Icon(Icons.menu), color: AppColor.whiteprimary, onPressed: () {}),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColor.blacksecondery,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: const TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                            color: AppColor.whiteprimary,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black54,
                          tabs: [
                            TabItem(title: 'Accounts'),
                            TabItem(title: 'Cards'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [AccountsPage(), Text('Cards')]),
      ),
    );
  }
}
