import 'package:flutter/material.dart';

class RentMore extends StatefulWidget {
  const RentMore({Key? key}) : super(key: key);

  @override
  State<RentMore> createState() => _RentMoreState();
}

class _RentMoreState extends State<RentMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Book now",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              transform: Matrix4.translationValues(0.0, -60.0, 0.0),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset(
                "assets/images/camera1.jpg",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
