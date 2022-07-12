import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo10/employee_controller.dart';

class EmployeeDataScreen extends StatelessWidget {
  EmployeeDataScreen({Key? key}) : super(key: key);
  final EmployeeDataController userDataScreenObj =
      Get.put(EmployeeDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Employee Data"),
      ),
      body: Column(children: [
        Obx(
          () => Expanded(
            child: ListView.separated(
              itemCount:
                  userDataScreenObj.employeeDataModalObj.value.data?.length ??
                      0,
              itemBuilder: (context, index) {
                final data =
                    userDataScreenObj.employeeDataModalObj.value.data?[index];
                final data1 = userDataScreenObj
                    .employeeDataModalObj.value.message?[index];
                return Column(
                  children: [
                    Text("${data}"),
                    Text("${data?.id}"),
                    Text("${data?.employeeName}"),
                    Text("${data?.employeeSalary}"),
                    Text("${data?.employeeAge}"),
                    Text("${data?.profileImage}"),
                    Text("${data1}"),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 2,
                  color: Colors.black,
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
