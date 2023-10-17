// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_compiler/main.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

usermesseges() {
  return Obx(
    // ignore: invalid_use_of_protected_member
    () => crd_controll.datas.value == null
        ? SizedBox(
            height: 80.h,
            width: 100.w,
          )
        : SizedBox(
            height: 80.h,
            width: 100.w,
            child: Obx(
              () => ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: index.isEven
                          ? Container(
                              height: 4.h,
                              width: 5.w,
                              margin: EdgeInsets.only(right: 30.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.h),
                                  color: gr),
                              child: Center(
                                  child: alltext(
                                      // ignore: invalid_use_of_protected_member
                                      txt: crd_controll.datas.value[index]
                                          .toString(),
                                      col: bl,
                                      siz: 8.sp,
                                      wei: FontWeight.w500,
                                      max: 1)),
                            )
                          : Container(
                              height: 4.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.h),
                                  color: yl),
                              margin: EdgeInsets.only(left: 30.h),
                              child: Center(
                                  child: alltext(
                                      // ignore: invalid_use_of_protected_member
                                      txt: crd_controll.datas.value[index]
                                          .toString(),
                                      col: bl,
                                      siz: 8.sp,
                                      wei: FontWeight.w500,
                                      max: 1)),
                            ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  itemCount: crd_controll.datas.value.length),
            ),
          ),
  );
}
