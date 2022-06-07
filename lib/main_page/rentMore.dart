import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/arrangeRental.dart';
import 'package:pbm_b1/main_page/cart.dart';
import 'package:pbm_b1/main_page/arrangeRental.dart';
import 'package:pbm_b1/main_page/cart.dart';
import 'package:pbm_b1/main_page/history.dart';
import 'package:pbm_b1/main_page/rent.dart';
import 'package:pbm_b1/main_page/setAddress.dart';

class RentMore extends StatefulWidget {
  const RentMore({Key? key}) : super(key: key);

  @override
  State<RentMore> createState() => _RentMoreState();
}

class _RentMoreState extends State<RentMore> {
  String _selected = "perhari";
  int counter = 1;
  int counter2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text(
          "",
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
              height: 200,
              child: Image.asset(
                "assets/images/camera1.jpg",
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Canon EOS 1300D",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    //Center Row contents horizontally,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Rp 170.000 / hari",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Barang tersedia 123 stock",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Atur Waktu Sewa",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Radio<String>(
                            value: 'perhari',
                            groupValue: _selected,
                            onChanged: (value) {
                              setState(() {
                                _selected = value!;
                              });
                            },
                          ),
                          title: const Text('Per-Hari'),
                        ),
                      ),
                      counter > 1
                          ? IconButton(
                              icon: Icon(Icons.remove_circle_outline_rounded),
                              onPressed: () => setState(() {
                                counter--;
                              }),
                            )
                          : IconButton(
                              icon: Icon(Icons.remove_circle_outline_rounded),
                              onPressed: () {},
                            ),
                      Text(counter.toString()),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline_rounded),
                        onPressed: () => setState(() {
                          counter++;
                        }),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Radio<String>(
                            value: 'Per-minggu',
                            groupValue: _selected,
                            onChanged: (value) {
                              setState(() {
                                _selected = value!;
                              });
                            },
                          ),
                          title: const Text('Per-Minggu'),
                        ),
                      ),
                      counter2 > 1
                          ? IconButton(
                              icon: Icon(Icons.remove_circle_outline_rounded),
                              onPressed: () => setState(() {
                                counter2--;
                              }),
                            )
                          : IconButton(
                              icon: Icon(Icons.remove_circle_outline_rounded),
                              onPressed: () {},
                            ),
                      Text(counter2.toString()),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline_rounded),
                        onPressed: () => setState(() {
                          counter2++;
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spesifikasi",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text("Pixel Efektif"),
                      ),
                      Text(
                        "18MP APS-C CMOS sensor & DIGIC 4+",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text("Record Efektif"),
                      ),
                      Text(
                        "Full HD Recording",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spesifikasi",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Color.fromARGB(255, 225, 162, 91),
                    ),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ArrangeRental()));
                    },
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: Color.fromARGB(255, 225, 162, 91),
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cart()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
