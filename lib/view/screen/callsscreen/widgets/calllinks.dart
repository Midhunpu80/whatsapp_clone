import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:sizer/sizer.dart';

Widget linkcalls() {
  return Container(
    height: 10.h,
    width: 100.w,
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: dk,
        radius: 3.h,
        child: Icon(
          Icons.link,
          color: wh,
        ),
      ),
      title: alltext(
          txt: "create call links",
          col: bl,
          siz: 12.sp,
          wei: FontWeight.w500,
          max: 1),
      subtitle: alltext(
          txt: "share a link for your whatsapp call",
          col: gy,
          siz: 9.sp,
          wei: FontWeight.w500,
          max: 1),
    ),
  );
}
