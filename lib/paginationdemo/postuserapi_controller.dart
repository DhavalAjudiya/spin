import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/paginationdemo/postuserapi_modal.dart';
import 'package:vapidemo/paginationdemo/postuserapi_service.dart';

class PostUserController extends GetxController {
  ScrollController scrollController = ScrollController();
  RxList<PostUserApi> userModal = <PostUserApi>[].obs;
  RxList appData = [].obs;
  int select = 2;

  @override
  void onInit() {
    userConteollerMethod();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        moreuserConteollerMethod();
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

  Future<void> userConteollerMethod() async {
    final result = await GetUserService.getUserServiceMethod(select);
    if (result != null) {
      userModal.value = result;
      appData.addAll(userModal.value);
    }
  }

  Future<void> moreuserConteollerMethod() async {
    select++;
    final result = await GetUserService.getUserServiceMethod(select);
    if (result != null) {
      userModal.value = result;
      appData.addAll(userModal.value);
    }
  }
}
