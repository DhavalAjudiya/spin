import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/paginationdemo/pagedemo_modal.dart';

import 'package:vapidemo/paginationdemo/pagedemo_service.dart';

class PageDemoController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxList<PageDemoModal> userModal = <PageDemoModal>[].obs;
  RxList appData = [].obs;
  int select = 2;

  @override
  void onInit() {
    PageControllerMethod();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        morePageControllerMethod();
        print("${scrollController.position.pixels}");
      }
    });
    //moreUserConteollerMethod();
    super.onInit();
  }

  void scrollUp() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: Duration(seconds: 2),
      curve: Curves.decelerate,
    );
  }

  Future<void> PageControllerMethod() async {
    final result = await PageDemoService.PageDataService(select);
    if (result != null) {
      userModal.value = result;
      appData.addAll(userModal.value);
    }
  }

  Future<void> morePageControllerMethod() async {
    select++;
    final result = await PageDemoService.PageDataService(select);
    if (result != null) {
      userModal.value = result;
      appData.addAll(userModal.value);
    }
  }
}
