import 'package:flutter/material.dart';
import 'package:tiktok_clone/Color/Constant.dart';
import 'package:tiktok_clone/View/Screen/Auth/LoginScreen.dart';

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
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: BackgroundColor

theme: ThemeData.dark(),
        home:  LoginScreen());
  }
}
