import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valuer_association/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Valuer Association",
      home: HomePage(),
    );
  }
}
