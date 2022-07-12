import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo9/userdata_controller.dart';
import 'package:vapidemo/apidemo9/userdata_screen.dart';

class UserDataButton extends StatelessWidget {
  UserDataButton({Key? key}) : super(key: key);
  final UserDataController userDataControllerObj = UserDataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Call Api"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () {
            userDataControllerObj.userDataControllerMethod();
            Get.to(UserDataScreen());
          },
          child: Center(
            child: Container(
              height: 8.h,
              width: 30.w,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Click Me"),
            ),
          ),
        )
      ]),
    );
  }
}
