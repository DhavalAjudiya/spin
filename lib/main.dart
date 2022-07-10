import 'package:flutter/material.dart';
import 'package:vapidemo/apidemo1/apidemo.dart';
import 'package:vapidemo/apidemo2/getdata.dart';
import 'package:vapidemo/apidemo3/persondetail.dart';
import 'package:vapidemo/spin/spin.dart';
import 'package:vapidemo/spin/spin2.dart';
import 'package:vapidemo/spin/spin4.dart';

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
      home: PersonDetailDemo(),
    );
  }
}
