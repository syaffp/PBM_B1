import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm_b1/main_page/cart.dart';
import 'package:pbm_b1/main_page/rentMore.dart';
import 'package:pbm_b1/services/databaseService.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromRGBO(76, 219, 196, 1),
        title: Text("Kamera"),
      ),
      body: ListView(
        children: [
          FutureBuilder<QuerySnapshot>(
            future: productCollection.get(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
              } else {
                Text("loading");
              }
              return Text("nodata");
            },
          ),
          SizedBox(
            height: 150.0,
            width: 100.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: Text("Canon EOS 1300D"),
                subtitle: Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("3000.00"),
                    GestureDetector(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      // aksi untuk favorite
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cart()),
                        );
                      },
                    ),
                  ],
                ),
                // aksi untuk card
                onTap: () {
                  // fungsi untuk menambahkan data
                  DatabaseService.CreateOrUpdateProducts("1",
                      name: "Canon EOS 1300DE", price: 700000);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RentMore()),
                  );
                },
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 150,
                    minHeight: 100,
                    maxWidth: 150,
                    maxHeight: 100,
                  ),
                  child: Image.asset("assets/images/camera1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150.0,
            width: 100.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(30),
              elevation: 4,
              child: ListTile(
                isThreeLine: true,
                title: Text("Canon EOS 1300D"),
                subtitle: Text("340.000"),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("3000.00"),
                    GestureDetector(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                onTap: () {},
                leading: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 150,
                    minHeight: 100,
                    maxWidth: 150,
                    maxHeight: 100,
                  ),
                  child: Image.asset("assets/images/camera1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
