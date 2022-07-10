import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo2/getapiservice.dart';

import 'getapimodal.dart';

class AirlineController extends GetxController {
  RxBool loader = true.obs;
  Rx<AirlineApiDemo> airline = AirlineApiDemo().obs;
  ScrollController scrollController = ScrollController();
  Future<void> getModalData() async {
    try {
      print("-------getModalData------444444---------");
      loader.value = true;
      print("-------getModalData------55555---------");
      final result = await GetApiService.getApiMethod();
      print("-------getModalData------666666---------");
      if (result != null) {
        print("-------getModalData------7777777---------");
        airline.value = result;
      }
      print("-------getModalData------888888---------");
      loader.value = false;
      print("-------getModalData------99999999---------");
    } catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    getModalData();
    scrollController.addListener(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          print("pixel ==>>${scrollController.position.pixels}");
          // isPagination.value = true;
          // nextData();
        }
      });
    });
    super.onInit();
  }
}
