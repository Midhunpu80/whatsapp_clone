// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_compiler/main.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/userview/widgets/messegefields.dart';
import 'package:sizer/sizer.dart';

//// TextEditingController essay = TextEditingController();

Widget textformfiels(BuildContext context) {
  return FittedBox(
    child: Row(
      children: [
        SizedBox(
          height: 10.h,
          width: 87.w,
          child: TextFormField(
            controller: crd_controll.essay.value,
            // onFieldSubmitted: (val) {
            //   crd_controll.adddata(data: val);
            // },
            style: TextStyle(color: wh),
            decoration: InputDecoration(
                suffixIcon: FittedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            papperclip(context);
                            print("papper clip");
                          },
                          child: Icon(
                            Icons.link,
                            color: wh,
                            size: 1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: () {
                            print("sleeke");
                          },
                          child: Icon(
                            Icons.currency_rupee,
                            color: wh,
                            size: 1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            print("dnsdnsfsk");
                          },
                          child: Icon(
                            Icons.camera_alt_rounded,
                            color: wh,
                            size: 1.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                prefixIcon: Icon(
                  Icons.emoji_emotions,
                  color: wh,
                ),
                hintStyle: TextStyle(color: wh, fontSize: 10.sp),
                filled: true,
                fillColor: bl.withOpacity(0.3),
                hintText: "Type something............",
                contentPadding: EdgeInsets.only(left: 1.h),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5.h))),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 2.h, bottom: 4.h),
            child: CircleAvatar(
              backgroundColor: dk,
              radius: 3.h,
              child: Obx(() => crd_controll.essay.value.text.isEmpty
                  ? InkWell(
                      onTap: () {
                        print("fkjdfdfkjdkj");
                      },
                      child: Icon(
                        Icons.mic,
                        color: wh,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        crd_controll.adddata(
                            data: crd_controll.essay.value.text);
                        // crd_controll.adddata(data: essay.text);
                      },
                      child: Icon(
                        Icons.send,
                        color: wh,
                      ),
                    )),
            ))
      ],
    ),
  );
}
