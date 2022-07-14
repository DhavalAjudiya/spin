import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/rupee1/rupee1_controller.dart';

class RupeeScreen extends StatelessWidget {
  RupeeScreen({Key? key}) : super(key: key);
  final RupeeController rupeeController = Get.put(RupeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rupree Price"),
      ),
      body: Column(children: [
        Obx(
          () => Expanded(
            child: ListView.separated(
              itemCount: rupeeController.getRupeeModal.value.slug?.length ?? 0,
              itemBuilder: (context, index) {
                final data = rupeeController.getRupeeModal.value.fiat;
                return Column(
                  children: [
                    Text("${data?.usd}"),
                    Text("${data?.gbp}"),
                    Text("${data?.aud}"),
                    Text("${data?.cad}"),
                    Text("${data?.cny}"),
                    Text("${data?.eur}"),
                    Text("${data?.hkd}"),
                    Text("${data?.krw}"),
                    Text("${data?.sgd}"),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.black,
                  thickness: 2,
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
