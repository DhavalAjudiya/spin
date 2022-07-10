import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo1/controller.dart';

class Apidemo extends StatelessWidget {
  Apidemo({Key? key}) : super(key: key);
  final ApiController apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => apiController.loding.value == true
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: apiController.deMomodal.length,
                      itemBuilder: ((context, index) {
                        print("-------screen------1010101010---------");

                        return Column(
                          children: [
                            Text("${apiController.deMomodal[index].id}"),
                            Text("${apiController.deMomodal[index].userId}"),
                            Text("${apiController.deMomodal[index].title}"),
                            Text("${apiController.deMomodal[index].body}"),
                          ],
                        );
                      }),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
