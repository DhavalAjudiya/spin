import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo8/author_controller.dart';
import 'package:vapidemo/apidemo8/author_screen.dart';

class AuthorButton extends StatelessWidget {
  AuthorButton({Key? key}) : super(key: key);
  final AuthorController buttonObj = AuthorController();
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
            buttonObj.authorControllerMethod();
            Get.to(AuthorScreen());
          },
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 30.w,
              height: 8.h,
              color: Colors.blue,
              child: Text("Click me"),
            ),
          ),
        )
      ]),
    );
  }
}
