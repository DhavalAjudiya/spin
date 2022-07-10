import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo2/getapicontroller.dart';

class AirlineScreen extends StatelessWidget {
  AirlineScreen({Key? key}) : super(key: key);
  final AirlineController apiController = Get.put(AirlineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => apiController.loader.value == true
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView.separated(
                      itemCount: apiController.airline.value.data?.length ?? 0,
                      itemBuilder: ((context, index) {
                        print("-------screen------1010101010---------");
                        final data = apiController.airline.value.data?[index];
                        return Container(
                          child: Row(
                            children: [
                              Image.network("${data?.airline?.first.logo}",
                                  width: 100),
                              Column(
                                children: [
                                  Text("${data?.name}"),
                                  Text("${data?.airline?.first.name}"),
                                  Text("${data?.airline?.first.country}"),
                                  Text("${data?.airline?.first.slogan}"),
                                  Text("${data?.airline?.first.website}"),
                                ],
                              ),
                            ],
                          ),
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
