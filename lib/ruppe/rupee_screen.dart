import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo10/employee_controller.dart';
import 'package:vapidemo/ruppe/ruppe_controller.dart';

class RuppeScreen extends StatelessWidget {
  RuppeScreen({Key? key}) : super(key: key);
  final RupeeController rupeeController = Get.put(RupeeController());

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
              itemCount: rupeeController.rupeeModal.value.prices?.length ?? 0,
              itemBuilder: (context, index) {
                final data = rupeeController.rupeeModal.value.prices?[index];
                final data1 = rupeeController.rupeeModal.value.priceChange;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("price_change :${data1}",
                          style: TextStyle(fontSize: 20)),
                      Text("prices : ${data}"),
                    ],
                  ),
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
