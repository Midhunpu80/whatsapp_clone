// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

class userchatview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        title: alltext(
            txt: "Midhun pu ",
            col: wh,
            siz: 12.sp,
            wei: FontWeight.w400,
            max: 1),
        backgroundColor: dk,
        leading: FittedBox(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: bl,
                    size: 4.h,
                  )),
              CircleAvatar(
                backgroundColor: re,
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.video_call_sharp,
              color: wh,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
              color: wh,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: wh,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.h,
              color: blu,
              width: 100.w,
            ),
            Container(
              height: 9.h,
              color: re,
              width: 100.w,
            )
          ],
        ),
      ),
    );
  }
}
