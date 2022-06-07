import 'package:flutter/material.dart';
import 'package:pbm_b1/services/authService.dart';
import 'package:pbm_b1/welcome_screenpage/login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
      } // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

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
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
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
                            "Daftar Akun",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Lengkapi data berikut !",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide
                                          .none, // Apply corner radius
                                    ),
                                    labelText: 'Username',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide
                                          .none, // Apply corner radius
                                    ),
                                    labelText: 'Email',
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _obscured,
                                  focusNode: textFieldFocusNode,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior: FloatingLabelBehavior
                                        .never, //Hides label on focus or if filled
                                    labelText: "Password",
                                    filled:
                                        true, // Needed for adding a fill color
                                    fillColor: Colors.white,
                                    isDense: true, // Reduces height a bit
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide
                                          .none, // Apply corner radius
                                    ),

                                    suffixIcon: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: GestureDetector(
                                        onTap: _toggleObscured,
                                        child: Icon(
                                          _obscured
                                              ? Icons.visibility_rounded
                                              : Icons.visibility_off_rounded,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _obscured,
                                  focusNode: textFieldFocusNode,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior: FloatingLabelBehavior
                                        .never, //Hides label on focus or if filled
                                    labelText: "Password",
                                    filled:
                                        true, // Needed for adding a fill color
                                    fillColor: Colors.white,
                                    isDense: true, // Reduces height a bit
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide
                                          .none, // Apply corner radius
                                    ),

                                    suffixIcon: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: GestureDetector(
                                        onTap: _toggleObscured,
                                        child: Icon(
                                          _obscured
                                              ? Icons.visibility_rounded
                                              : Icons.visibility_off_rounded,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(50),
                                    primary:
                                        const Color.fromRGBO(225, 208, 91, 1),
                                  ),
                                  child: const Text(
                                    'Daftar Sekarang',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Colors.black),
                                  ),
                                  onPressed: () async {
                                    await AuthServices.signUp(
                                        emailController.text,
                                        passwordController.text);
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const LoginPage()));
                                  },
                                ),
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
