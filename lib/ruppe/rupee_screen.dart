import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vapidemo/apidemo10/employee_controller.dart';
import 'package:vapidemo/ruppe/ruppe_controller.dart';
import 'package:vapidemo/ruppe/utils.dart';

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
                      Text("price :${data1}", style: TextStyle(fontSize: 20)),
                      Text("data"),
                      // Text(
                      //     "prices : ${DateFormat('yyyy-MM-dd ').format(data?[0])}"),
                      // Text("prices : ${Utils.formatTimeOfDay(data?[0] ?? 0)}"),
                      Text("prices : ${data?[1]}"),
                      Text("prices : ${data?[2]}"),
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
