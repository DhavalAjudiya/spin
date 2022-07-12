import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vapidemo/apidemo5/fackstore_controller.dart';

class FackStorePage extends StatelessWidget {
  FackStorePage({Key? key}) : super(key: key);
  final FackStorieController fackStorieObj = Get.put(FackStorieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Obx(
          () => Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.network(
                          "${fackStorieObj.fackstorieModalcontroller[index].image}",
                          height: 10.h),
                      Text(
                          "${fackStorieObj.fackstorieModalcontroller[index].rating}"),
                      Text(
                          "${fackStorieObj.fackstorieModalcontroller[index].rating?.rate}"),
                      Text(
                          "${fackStorieObj.fackstorieModalcontroller[index].rating?.count}"),
                    ],
                  );
                },
                separatorBuilder: (BuildContext conext, int index) {
                  return Divider();
                },
                itemCount: fackStorieObj.fackstorieModalcontroller.length),
          ),
        ),
      ]),
    );
  }
}
