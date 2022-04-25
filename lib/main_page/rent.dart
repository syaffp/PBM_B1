import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/rentMore.dart';

class Rent extends StatefulWidget {
  const Rent({Key? key}) : super(key: key);

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  @override
  Widget build(BuildContext context) {
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
              color: Color.fromRGBO(76, 219, 196, 1),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/icons/photo.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Shutter.cam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 110),
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
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // minimumSize: const Size.fromHeight(
                      //     50), // fromHeight use double.infinity as width and 40 is the height
                      ),
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RentMore()));
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
