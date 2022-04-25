import 'package:flutter/material.dart';
// import 'package:pbm_b1/main_page/bottomNavigate.dart';
import 'package:pbm_b1/welcome_screenpage/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          // nambahin byk widget
          children: [ 
            SingleChildScrollView(
              // container:modif
              child: Container(
                // we will give media query height
                // double.infinity make it big as my parent allows
                // while MediaQuery make it big as per the screen

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color.fromRGBO(76, 219, 196, 1),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // up images
                        Image.asset(
                          'assets/icons/photo.png',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "selamat datang",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Silahkan masukkan email dan password akun anda",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: <Widget>[
                                // form
                                TextFormField(
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // ElevatedButton(
                                //   style: ElevatedButton.styleFrom(
                                //     minimumSize: const Size.fromHeight(50),
                                //   ),
                                //   child: Text('Login'),
                                //   onPressed: () {
                                //     Navigator.pushReplacement(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) =>
                                //                 BottomNavigate()));
                                //   },
                                // ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(children: <Widget>[
                                  Expanded(
                                      child: Divider(
                                    color: Colors.black,
                                  )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("atau"),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: Divider(
                                    color: Colors.black,
                                  )),
                                ]),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Text(
                                      "Belum memiliki akun ?",
                                    ),
                                    // link text
                                    InkWell(
                                      child: Text(
                                        "Daftar disini",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(225, 208, 91, 1),
                                        ),
                                      ),
                                      // pindah page
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Register()),
                                        );
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
