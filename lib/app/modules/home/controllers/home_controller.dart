import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> GetData() async {
    CollectionReference mahasiswa = firestore.collection('mahasiswa_21312041');

    return mahasiswa.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference mahasiswa = firestore.collection('mahasiswa_21312041');
    return mahasiswa.snapshots();
  }

  void deleteMahasiswa(String id) {
    DocumentReference docRef =
        firestore.collection("mahasiswa_21312041").doc(id);

    try {
      Get.defaultDialog(
        title: "Info",
        middleText: "Apakah anda yakin menghapus data ini",
        onConfirm: () {
          docRef.delete();
          Get.back();
        },
        textConfirm: "Ya",
        textCancel: "Batal",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi kesalahan",
        middleText: "Tidak berhasil menghapus data",
      );
    }
  }
}
