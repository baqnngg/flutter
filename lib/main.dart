import 'package:first/button_page.dart';
import 'package:first/drawer.dart';
import 'package:first/flex_page.dart';
import 'package:first/image_page.dart';
import 'package:first/layout_page.dart';
import 'package:first/list_page.dart';
import 'package:first/popup_page.dart';
import 'package:first/setting_page_dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LayoutPage(),
        "/setting": (context) => const SettingPage(),
        "/popup": (context) => const PopupPage(),
        "/flex": (context) => const FlexPage(),
        "/image": (context) => const imagePage(),
        "/button": (context) => const ButtonPage(),
        "/list" : (context) => const ListPage()
      },
    );
  }
}


