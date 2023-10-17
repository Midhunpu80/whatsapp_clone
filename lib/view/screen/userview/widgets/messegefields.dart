import 'package:flutter/material.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/userview/widgets/textfield.dart';
import 'package:sizer/sizer.dart';

Widget messegefields(BuildContext context) {
  return Container(
    height: 9.h,
    width: 100.w,
    child: textformfiels(context),
  );
}

papperclip(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(left: 4.h, bottom: 12.h, right: 4.h),
          child: Container(
            height: 38.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.h),
                color: bl.withOpacity(0.5)),
            child: GridView.builder(
                itemCount: 8,
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(3.h),
                    height: 3.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h), color: re),
                  );
                }),
          ),
        );
      });
}
