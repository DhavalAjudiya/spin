import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo7/userpage_controller.dart';
import 'package:vapidemo/apidemo7/userpage_screen.dart';

class ButtonPage extends StatelessWidget {
  ButtonPage({Key? key}) : super(key: key);
  final UserController userControllerButton = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Call Api"),
      ),
      body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                userControllerButton.userControllerMethod();
                Get.to(UserPageScreen());
              },
              child: Center(
                child: Container(
                  height: 8.h,
                  width: 30.w,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text("Submit"),
                ),
              ),
            ),
          ]),
    );
  }
}
