import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_mahasiswa_controller.dart';

class UpdateMahasiswaView extends GetView<UpdateMahasiswaController> {
  const UpdateMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UpdateMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
