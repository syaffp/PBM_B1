import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/arrangeRental.dart';
import 'package:pbm_b1/main_page/profile.dart';
import 'package:pbm_b1/main_page/setAddress.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(76, 219, 196, 1),
        title: Text("Your Cart"),
      ),
      body: Container(
        color: const Color(0xfff1f5f9),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: ListView(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/images/camera1.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Canon EOS 1300D",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "340.000",
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2 Hari",
                              style: TextStyle(
                                color: Color(0xFF4CDBC4),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "assets/images/camera1.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Canon EOS 1300D",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "340.000",
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2 Hari",
                              style: TextStyle(
                                color: Color(0xFF4CDBC4),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(76, 219, 196, 1),
                ),
                child: const Text('Lanjut pembayaran'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ArrangeRental()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
