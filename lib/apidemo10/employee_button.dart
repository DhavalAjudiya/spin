import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo10/employee_controller.dart';
import 'package:vapidemo/apidemo10/employee_screen.dart';

class EmployeeDataButton extends StatelessWidget {
  EmployeeDataButton({Key? key}) : super(key: key);
  final EmployeeDataController empControllerobj = EmployeeDataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Demo"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        InkWell(
          onTap: () {
            empControllerobj.employeeControllerMethod();
            Get.to(EmployeeDataScreen());
          },
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 8.h,
              width: 30.w,
              color: Colors.blue,
              child: Text("Click "),
            ),
          ),
        )
      ]),
    );
  }
}
