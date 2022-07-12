import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo6/passengers_controller.dart';

class PassengerScreen extends StatelessWidget {
  PassengerScreen({Key? key}) : super(key: key);
  final PassengerController passengerobj = Get.put(PassengerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Obx(
        () => Expanded(
          child: ListView.separated(
            //itemCount: apiController.airline.value.data?.length ?? 0,
            itemCount: passengerobj.welcomeModal.value.data?.length ?? 0,
            itemBuilder: (context, index) {
              final data = passengerobj.welcomeModal.value.data?[index];
              return Column(
                children: [
                  Text("${data?.id}"),
                  Text("${data?.name}"),
                  Text("${data?.trips}"),
                  Text("${data?.airline?[index].id}"),
                  Text("${data?.v}"),
                  Text("${data?.reactive}"),
                ],
              );
            },

            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ),
      )
    ]));
  }
}
