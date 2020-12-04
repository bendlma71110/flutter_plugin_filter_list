// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:filter_list/filter_list.dart';
import 'package:filter_list/filter_list.dart';

import 'package:example/main.dart';

void main() => runApp(MyApp());
List<String> liste =  ["Eins", "Zwei", "Drei"];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TItle",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FilterListWidget(
      hideSearchField: true,
      hideHeader: true,
      hideSelectedTextCount: true,
      allTextList: liste, //Liste der Filterkriterien (Maus, Monitor)
      // backgroundColor: Colors.green,
      // applyButonTextBackgroundColor: Colors.red,
      // allResetButonColor: Colors.orange,
      unselectedTextbackGroundColor: Colors.grey.withOpacity(0.6),
      allRstApplybackgroundColor: Colors.red,
    );
  }
}
