import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vapidemo/apidemo3/persondetail_controller.dart';

class PersonDetailDemo extends StatelessWidget {
  PersonDetailDemo({Key? key}) : super(key: key);
  final PersonDetailController percontroller =
      Get.put(PersonDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: ListView.separated(
                itemCount: percontroller.personDetailCon.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Text("${percontroller.personDetailCon[index].id}"),
                      Text("${percontroller.personDetailCon[index].userId}"),
                      Text("${percontroller.personDetailCon[index].title}"),
                      Text("${percontroller.personDetailCon[index].body}"),
                    ],
                  );
                }),
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
