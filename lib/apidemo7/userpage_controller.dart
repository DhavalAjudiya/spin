import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo7/userpage_modal.dart';
import 'package:vapidemo/apidemo7/userpage_service.dart';

class UserController extends GetxController {
  Rx<UserPage> userModalObj = UserPage().obs;
  ScrollController scrollController = ScrollController();
  RxList<Datum> userData = <Datum>[].obs;
  int select = 0;
  @override
  void onInit() {
    userControllerMethod();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        print("pixel ==>>${scrollController.position.pixels}");
        moreUserControllerMethod();
        // isPagination.value = true;
        // nextData();
      }
    });
    super.onInit();
  }

  void scrollup() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: Duration(seconds: 2),
      curve: Curves.decelerate,
    );
  }

  Future<void> userControllerMethod() async {
    final result = await UserService.userServiceMethod(select);
    if (result != null) {
      userModalObj.value = result;
      userData.addAll(userModalObj.value.data!);
    }
  }

  Future<void> moreUserControllerMethod() async {
    select++;
    final result = await UserService.userServiceMethod(select);
    if (result != null) {
      userModalObj.value = result;
      userData.addAll(userModalObj.value.data!);
    }
  }
}
