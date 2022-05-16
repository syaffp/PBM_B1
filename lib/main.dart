import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/bottomNavigate.dart';
import 'package:pbm_b1/main_page/setAddress.dart';
import 'package:flutter/services.dart';
import 'package:pbm_b1/welcome_screenpage/splash.dart'; 

// fungsi yg pertama kali dijlnkan
void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF4CDBC4),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
