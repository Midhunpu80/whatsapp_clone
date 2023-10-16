import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget callList() {
  return Container(
    height: 73.h,
    width: 100.w,
    child: ListView.separated(
        //// scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 14.h,
            width: 20.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: dk,
                    radius: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                   Padding(padding:EdgeInsets.only(left: 3.h), child:    alltext(
                            txt: "Robin hood",
                            col: index.isOdd ? bl : re,
                            siz: 12.sp,
                            wei: FontWeight.w400,
                            max: 1)),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              index.isOdd
                                  ? Icons.arrow_outward_sharp
                                  : Icons.arrow_forward,
                              color: index.isOdd ? gr : re,
                              size: 2.h,
                            ),
                            label: alltext(
                                txt: "12 october ,12:30 Pm",
                                col: bl,
                                siz: 9.sp,
                                wei: FontWeight.w400,
                                max: 1))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Icon(
                      Icons.call,
                      color: dk,
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 0.w,
          );
        },
        itemCount: 10),
  );
}
