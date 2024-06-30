

import 'package:bankapp_task/screen/cards_page.dart';
import 'package:bankapp_task/screen/home_page.dart';
import 'package:bankapp_task/screen/login_page.dart';
import 'package:bankapp_task/screen/pay_bill_page.dart';
import 'package:bankapp_task/screen/views/Cards.dart';
import 'package:bankapp_task/screen/views/accounts.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

const String login = '/login_page';
const String home = '/home_screen';
const String cards = '/cards_page';
const String accounts = '/accounts';
const String card = '/Cards';
const String paybill = '/pay_bill_page';

List<GetPage> getPages = [
  GetPage(name: login, page: () => LoginPage()),
  GetPage(name: home, page: () => HomePage()),
  GetPage(name: cards, page: () => CardsPage(
  )),
  GetPage(name: accounts, page: ()=> AccountsPage()),
  GetPage(name: card, page: ()=>CardPage()),
  GetPage(name: paybill, page: ()=>PayBillPage())
];