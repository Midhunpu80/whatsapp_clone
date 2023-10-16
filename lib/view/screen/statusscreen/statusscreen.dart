// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/statusscreen/widgets/clebdata.dart';
import 'package:online_compiler/view/screen/statusscreen/widgets/listofstatus.dart';
import 'package:online_compiler/view/screen/statusscreen/widgets/navbar.dart';
import 'package:sizer/sizer.dart';

class statusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FittedBox(
        child: Column(
          children: [
          Container(height: 5.h,width:12.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.h),color: gy),child: Icon(Icons.edit),),
          SizedBox(height: 10,),
            
            FloatingActionButton(
              
              backgroundColor: dk,
              onPressed: (){},child: Icon(Icons.camera_alt_sharp,color: wh,),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            navabar_stat(txt: "Status", icon: Icons.more_vert),
            listofuser_stat(),
            const Divider(),
            navabar_stat(txt: "Channels", icon: Icons.add),
            channeldata(
                txt: "News 18 india",
                sub:
                    "midhddjdjddjdjdnsjndosnsksksfnfnfnjnfjfindfndnfijninfikfnjnnfnfjddjnjnfjdjndndjndjndjjjdfnjdfdjjnjdnjdnjfdnfjdnjdn"),
            const Divider(),
            channeldata(
                txt: "Netflix",
                sub:
                    "can i think i learn this fo rca lvoeno travel them love fir e anuthing  can i relare them"),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  alltext(
                      txt: "Find Channels",
                      col: bl,
                      siz: 12.sp,
                      wei: FontWeight.bold,
                      max: 1),
                  TextButton.icon(
                      onPressed: () {},
                      icon: alltext(
                          txt: "See all",
                          col: bl,
                          siz: 12.sp,
                          wei: FontWeight.w600,
                          max: 1),
                      label: Icon(Icons.arrow_forward_ios_rounded,size: 2.h,color: bl,))

                ],
              ),
            ),
            clebList_stat(),
            SizedBox(height: 15.h,),
          ],
        ),
      ),
    );
  }
}
