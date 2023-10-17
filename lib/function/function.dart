// ignore_for_file: avoid_print, invalid_use_of_protected_member, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cruddata extends GetxController {
  final RxList<String> datas = <String>[].obs;
  final essay = TextEditingController().obs;

  adddata({var data}) {
    datas.value.add(data.toString());
    print(datas.value.toList().toString());
    essay.value.clear();
    update();
  }

  @override
  void onReady() {
    datas.value.toList();
    // TODO: implement onReady
    super.onReady();
  }

  // updates() {
  //   adddata(data: essay.value.text);
  //   update();

  //   ///print(datas.)
  // }
}
