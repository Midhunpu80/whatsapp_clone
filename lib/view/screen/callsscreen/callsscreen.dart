
import 'package:flutter/material.dart';

import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/callsscreen/widgets/callList.dart';
import 'package:online_compiler/view/screen/callsscreen/widgets/calllinks.dart';
import 'package:sizer/sizer.dart';

class callsscreen extends StatelessWidget {
  const callsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton:FloatingActionButton(
      backgroundColor: dk,
      onPressed: (){},child: Icon(Icons.call,color: wh
    ,),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            linkcalls(),
            Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: alltext(
                    txt: "Recent",
                    col: bl,
                    siz: 12.sp,
                    wei: FontWeight.w500,
                    max: 1)),
            callList()
          ],
        ),
      ),
    );
  }
}
