// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/camera.dart';
import 'package:pbm_b1/services/authService.dart';
import 'package:pbm_b1/services/databaseService.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  var user = FirebaseAuth.instance.currentUser;

  late String userMail;
  late String userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(24),
                color: const Color.fromRGBO(76, 219, 196, 1),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                'assets/icons/photo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Shutter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              ".cam",
                              style: TextStyle(
                                color: Color(0xFFFFD05B),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              child: Text(
                                '${FirebaseAuth.instance.currentUser!.email}',
                                // userId = user!.uid,
                                // userMail = user.email,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () async {
                                await AuthServices.signOut();
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/icons/gamer.png',
                              height: 30.0,
                              width: 30.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 50,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/icons/search.png',
                                  height: 30.0,
                                  width: 30.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Flexible(
                                  child: SizedBox(
                                    height: 30,
                                    child: TextField(
                                      enableSuggestions: false,
                                      autofocus: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Hi, apa yang kamu cari?'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(24),
              transform: Matrix4.translationValues(0.0, -60.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    "assets/images/camera.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Camera()),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Kamera"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    "assets/images/camera-drone.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Camera()),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Drone"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    "assets/images/flash.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Camera()),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Flash"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          elevation: 2,
                          child: Container(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Image.asset(
                                    "assets/images/camera-tripod.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Camera()),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text("Tripod"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
