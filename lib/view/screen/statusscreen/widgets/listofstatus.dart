import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget listofuser_stat() {
  return Container(
    height: 14.h,
    width: 100.w,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                index == 0
                    ? Stack(
                        children: [
                          Container(
                            height: 8.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.h),
                              color: bl,
                              border: Border.all(
                                  width: 2, color: index == 0 ? bl : gr),
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            left: 5.h,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: gr,
                              child: Center(
                                child: Icon(Icons.add, color: wh, size: 12),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        height: 8.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.h),
                            color: bl,
                            border: Border.all(width: 2, color: gr))),
                SizedBox(
                  height: 1.h,
                ),
                alltext(
                    txt: index == 0 ? "MyStatus" : "midhunpu",
                    col: bl,
                    siz: 8.sp,
                    wei: FontWeight.w400,
                    max: 1)
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 2.w,
          );
        },
        itemCount: 10),
  );
}
