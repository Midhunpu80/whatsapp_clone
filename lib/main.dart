import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_compiler/function/function.dart';
import 'package:online_compiler/view/screen/homescreen/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

 // ignore: non_constant_identifier_names
 final crd_controll = Get.put(cruddata());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:  Scaffold(body: Homescreen()));
    });
  }
}
