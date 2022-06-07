import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/bottomNavigate.dart';
import 'package:pbm_b1/services/authService.dart';
import 'package:pbm_b1/welcome_screenpage/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controller
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                // we will give media query height
                // double.infinity make it big as my parent allows
                // while MediaQuery make it big as per the screen

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: const Color.fromRGBO(76, 219, 196, 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            "selamat datang",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Silahkan masukkan email dan password akun anda",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  // menghubungkan email dengan controller
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: passwordController,
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(50),
                                  ),
                                  child: const Text('Login'),
                                  onPressed: () async {
                                    await AuthServices.signIn(
                                        emailController.text,
                                        passwordController.text);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const BottomNavigate()));
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(children: const <Widget>[
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
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Belum memiliki akun ?",
                                    ),
                                    InkWell(
                                      child: const Text(
                                        "Daftar disini",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(225, 208, 91, 1),
                                        ),
                                      ),
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
