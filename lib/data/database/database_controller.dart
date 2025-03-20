import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final db = FirebaseFirestore.instance;
final user = FirebaseAuth.instance.currentUser;

class DatabaseController {
  static Future<void> addData(String collection, Map<String, dynamic> data) async {
    await db.collection(collection).add(data).then((DocumentReference document) {
      print('Document Snapshot added with ID ${document.id}');
    });
  }

  static Future<void> writeAddress(address) async {
    await db.collection('users').doc(user!.uid).collection('addresses').add(address);
  }

  static Future<void> readAddresses() async {
    final snapshot = await db.collection('users').doc(user!.uid).collection('addresses').get();
    for (var doc in snapshot.docs) {
      print(doc.data());
    }
  }

  static Future<void> updateData(String collection, String id, Map<String, dynamic> data) async {
    await db.collection(collection).doc(id).update(data);
  }

  static Future<void> deleteData(String collection, String id) async {
    await db.collection(collection).doc(id).delete();
  }

  static Future<List<Map<String, dynamic>>> getData(String collection) async {
    final snapshot = await db.collection(collection).get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}

