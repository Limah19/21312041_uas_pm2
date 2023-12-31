import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_mahasiswa_controller.dart';

class AddMahasiswaView extends GetView<AddMahasiswaController> {
  const AddMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
