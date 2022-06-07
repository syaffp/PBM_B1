import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pbm_b1/welcome_screenpage/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              // we will give media query height
              // double.infinity make it big as my parent allows
              // while MediaQuery make it big as per the screen

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromRGBO(76, 219, 196, 1),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/icons/photo.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Shutter.cam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      child: Image.asset(
                        "assets/backgrounds/welcom.png",
                        height: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 100,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(76, 219, 196, 1),
                    // minimumSize: const Size.fromHeight(
                    //     50), // fromHeight use double.infinity as width and 40 is the height
                  ),
                  child: const Text('Ayo Mulai!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
