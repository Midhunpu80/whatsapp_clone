import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/userview/userview.dart';
import 'package:sizer/sizer.dart';

class chatscreen extends StatelessWidget {
  const chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: dk,
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: wh,
        ),
      ),
      body: Container(
        color: yl,
        height: 90.h,
        width: 100.w,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 10.h,
                width: 100.w,
                color: wh,
                child: ListTile(
                  onTap: () {
                    Get.to(() => userchatview());
                  },
                  title: alltext(
                      txt: "msd${index + 1}",
                      col: bl,
                      siz: 11.sp,
                      wei: FontWeight.w400,
                      max: 1),
                  leading: CircleAvatar(
                    backgroundColor: dk,
                    radius: 3.h,
                  ),
                  subtitle: alltext(
                      txt: "rdddddd",
                      col: bl,
                      siz: 8.sp,
                      wei: FontWeight.w400,
                      max: 1),
                  trailing: Column(
                    children: [
                      alltext(
                          txt: "${index + 1}:23${index.isEven ? "Pm" : "Am"}",
                          col: bl,
                          siz: 8.sp,
                          wei: FontWeight.w400,
                          max: 1),
                      SizedBox(
                        height: 2.h,
                      ),
                      CircleAvatar(
                        backgroundColor: gr,
                        radius: 10,
                        child: Center(
                            child: alltext(
                                txt: index.isEven ? "125+" : "${index + 1}",
                                col: wh,
                                siz: 5.sp,
                                wei: FontWeight.bold,
                                max: 1)),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox();
            },
            itemCount: 10),
      ),
    );
  }
}
