import 'package:flutter/material.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget clebList_stat() {
  return Container(
    height: 20.h,
    width: 100.w,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 15.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.h),
                    border: Border.all(width: 1, color: bl)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    CircleAvatar(
                      radius: 4.h,
                      backgroundColor: blu,
                    ),
                    alltext(
                        txt: "Midhun pu",
                        col: bl,
                        siz: 8.sp,
                        wei: FontWeight.w400,
                        max: 1),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 3.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: gr.withOpacity(0.8)),
                          onPressed: () {},
                          child: alltext(
                              txt: "follow",
                              col: yl,
                              siz: 10.sp,
                              wei: FontWeight.bold,
                              max: 1)),
                    )
                  ],
                ),
              ),
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
