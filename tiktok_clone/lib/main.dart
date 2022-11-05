import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/Color/Constant.dart';
import 'package:tiktok_clone/Controller/auth_controller.dart';
import 'package:tiktok_clone/View/Screen/Auth/LoginScreen.dart';
import 'package:tiktok_clone/View/Screen/Auth/Singup_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp().then((value) {

    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark().copyWith(
        //   scaffoldBackgroundColor: BackgroundColor

theme: ThemeData.dark(),
        home:  SingupScreen());
  }
}
