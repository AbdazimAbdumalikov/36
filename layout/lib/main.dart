import 'package:flutter/material.dart';
import 'package:layout/pages/single_child_scroll_view..dart';
import 'package:layout/pages/sliver_app_bar.dart';
import 'package:layout/pages/stack.dart';
import 'package:layout/pages/text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: //StackLayout(), // Это LayoutBuilder Задание 3
      SingleChildScrollViewExample() // это задание 1
      //SliverAppBarExample(), //Задание 2
      //TextFieldExample() //Задание 4
    );
  }
}
