import 'package:day9/custom_button.dart';
import 'package:day9/stack_demo.dart';
import 'package:flutter/material.dart';

import 'check_box.dart';
import 'contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CustomButton(),
    );
  }
}
