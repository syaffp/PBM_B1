import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbm_b1/services/authService.dart';
import 'package:pbm_b1/welcome_screenpage/splash.dart';
// import 'package:shutter_cam/main_page/arrangeRental.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF4CDBC4),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      // konek ke firebase userstream
      value: AuthServices.userStream, initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
