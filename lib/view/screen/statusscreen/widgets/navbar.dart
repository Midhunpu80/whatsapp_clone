import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget navabar_stat({required var txt, required IconData icon}) {
  return Container(
    height: 6.h,
    width: 100.w,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          alltext(txt: txt, col: bl, siz: 13.sp, wei: FontWeight.bold, max: 1),
          Icon(
            icon,
            color: bl,
          )
        ],
      ),
    ),
  );
}

channeldata({var txt,var sub,}) {
  return Container(
    height: 17.h,
    width: 100.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          trailing: Column(
            children: [
              //   SizedBox(height: 2.h,width: 10.w,),
              Container(
                height: 6.h,
                width: 13.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h), color: re),
              ),
            ],
          ),
          leading: CircleAvatar(
            radius: 18,
            backgroundColor: re,
          ),
          title: alltext(
              txt: txt,
              col: bl,
              siz: 13.sp,
              wei: FontWeight.bold,
              max: 1),
          subtitle: alltext(
              txt:sub,
              siz: 8.sp,
              wei: FontWeight.bold,
              max: null,
              col: bl),
        ),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.circle,
                color: gr,
                size: 1.h,
              ),
              label: alltext(
                  txt: "41 unread",
                  col: gr,
                  siz: 8.sp,
                  wei: FontWeight.bold,
                  max: 1),
            ),
            alltext(
                txt: "7 mins ago",
                col: bl,
                siz: 7.sp,
                wei: FontWeight.w500,
                max: 1)
          ],
        )
      ],
    ),
  );
}
