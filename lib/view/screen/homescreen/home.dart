import 'package:flutter/material.dart';
import 'package:online_compiler/utility/alltext.dart';
import 'package:online_compiler/utility/colors/colors.dart';
import 'package:online_compiler/view/screen/callsscreen/callsscreen.dart';
import 'package:online_compiler/view/screen/chatsscreen/chatsscreen.dart';
import 'package:online_compiler/view/screen/statusscreen/statusscreen.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: wh,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: wh,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: wh,
                  ))
            ],
            toolbarHeight: 6.h,
            bottom: TabBar(
                // indicatorPadding: EdgeInsets,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: wh,
                labelStyle: TextStyle(
                    fontSize: 12.sp, color: wh, fontWeight: FontWeight.w500),
                indicatorColor: wh,
                labelColor: wh,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.group,
                      color: wh,
                    ),
                  ),
                  const Tab(
                    text: "chats",
                  ),
                  const Tab(
                    text: "status",
                  ),
                  const Tab(
                    text: "calls",
                  )
                ]),
            title: alltext(
                txt: "whatsapp",
                col: wh,
                siz: 15.sp,
                wei: FontWeight.bold,
                max: 1),
            backgroundColor: dk,
          ),
          body:TabBarView(children: [
            chatscreen(),
            chatscreen(),
            statusScreen(),
            callsscreen()
          ])),
    );
  }
}
