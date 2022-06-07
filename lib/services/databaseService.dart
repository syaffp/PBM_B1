// ignore: avoid_web_libraries_in_flutter

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // menghubungkan ke firestore yang refrense nya mengarah ke table'products'
  // kenapa static karena supaya productcollection menjadi milik kelasnya
  static CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');
  // method untuk menambahkan atau update
  static Future<void> CreateOrUpdateProducts(String id,
      {String? name, int? price}) async {
    //
    await productCollection.doc(id).set({
      // map kumpulkan key dan value
      'nama': name,
      'harga': price,
    });
  }

  static Future<DocumentSnapshot> getProduct(String id) async {
    return await productCollection.doc().get();
  }
}