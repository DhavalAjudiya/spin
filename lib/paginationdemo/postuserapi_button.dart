import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/paginationdemo/postuserapi_controller.dart';
import 'package:vapidemo/paginationdemo/postuserapi_screen.dart';

class UserButton extends StatelessWidget {
  UserButton({Key? key}) : super(key: key);
  final PostUserController userController = Get.put(PostUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Api"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () {
            userController.userConteollerMethod();
            Get.to(UserDataScreen());
          },
          child: Center(
            child: Container(
              color: Colors.blue,
              width: 30.h,
              height: 8.h,
              alignment: Alignment.center,
              child: Text("Click me"),
            ),
          ),
        )
      ]),
    );
  }
}
