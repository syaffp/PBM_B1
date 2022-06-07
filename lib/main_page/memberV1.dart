// ignore: file_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbm_b1/main_page/camera.dart';


class MemberV1 extends StatefulWidget {
  const MemberV1({Key? key}) : super(key: key);

  @override
  State<MemberV1> createState() => _MemberV1State();
}

class _MemberV1State extends State<MemberV1> {
  File? image;

  int currentStep = 0;
  Future pickImage() async {
    // menggunakan plugin imagepicker fungsi buka gallery
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemporary = File(image.path);
    this.image = imageTemporary;
  }

  // funsi opencamera
  Future openCamera() async {
    // menggunakan plugin imagepicker fungsi camera
    final camera = await ImagePicker().pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,
        backgroundColor: const Color.fromRGBO(76, 219, 196, 1),
        title: const Text(
          "Member Verification",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        // fungsi untuk melanjutkan
        onStepContinue: () {
          // data final
          final isLastStep = currentStep == getSteps().length - 1;
          // jika data final maka di debug console ada tulisan done
          if (isLastStep) {
            print('done');
            // jika tidak value dari variable currentstep + 1 / pindah
          } else {
            setState(() => currentStep += 1);
          }
        },
        // fungsi untuk membatalkan
        onStepCancel:
            // jika currentstep = 0 maka null
            // => maka currentstep dikurang 1
            currentStep == 0 ? null : () => setState(() => currentStep -= 1),
      ),
    );
  }

  // data setiap step
  List<Step> getSteps() => [
        // page 1
        Step(
          // #f6f6f6
          // jika value currentStep lebih dari 0 maka aktif
          isActive: currentStep >= 0,
          title: const Text('Verivikasi KTP'),
          content: Center(
            child: Container(
              width: 420,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Mulai Verivikasi KTP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '''Informasi anda akan dilindungi Syarat Layanan dan
Kebijakan Privasi masing masing pihak untuk memenuhi
peraturan dari otoritas terkait
''',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(253, 157, 160, 160),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, //Center Row contents vertically,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 350,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(246, 246, 246, 1),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 68, 255, 183),
                                  width: 5,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(0, 2), // Shadow position
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, //Center Row contents horizontally,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, //Center Row contents vertically,
                                children: [
                                  GestureDetector(
                                    child: Image.asset(
                                      "assets/icons/camera_black.png",
                                      height: 100,
                                      width: 100,
                                    ),
                                    onTap: () => pickImage(),
                                  ),
                                  const Text("Unggah foto KTP"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // page 2
        Step(
          isActive: currentStep >= 1,
          title: const Text('Kontak Darurat'),
          content: Container(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Silahkan masukkan kontak daruratmu",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Kontak Darurat 1",
                      style: TextStyle(
                        color: Color.fromARGB(253, 157, 160, 160),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nama"),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 275,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: 'mohon masukkan nama anda',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Relasi"),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 275,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: '(Keluarga/Saudara/Teman)',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nomer HP"),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 225,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: 'Mohon masukkan disini',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Kontak Darurat 1",
                      style: TextStyle(
                        color: Color.fromARGB(253, 157, 160, 160),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // kontak darurat 2
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nama"),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 275,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: 'mohon masukkan nama anda',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Relasi"),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 275,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: '(Keluarga/Saudara/Teman)',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 5,
                    top: 1,
                    bottom: 1,
                  ),
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 211, 210, 210),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Nomer HP"),
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 225,
                        child: TextField(
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide.none, // Apply corner radius
                            ),
                            hintText: 'Mohon masukkan disini',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // page 3
        Step(
          isActive: currentStep >= 2,
          title: const Text('Verivikasi Wajah'),
          content: Center(
            child: Container(
              width: 420,
              height: 400,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Mulai Verivikasi KTP",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '''Informasi anda akan dilindungi Syarat Layanan dan
Kebijakan Privasi masing masing pihak untuk memenuhi
peraturan dari otoritas terkait
''',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(253, 157, 160, 160),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, //Center Row contents vertically,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                "assets/icons/face-recognition.png",
                                height: 200,
                                width: 200,
                              ),
                              // ketika di tap maka memanggil fungsi opencamera
                              onTap: () => openCamera(),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ];
}
