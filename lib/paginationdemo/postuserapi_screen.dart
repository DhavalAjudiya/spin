import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/paginationdemo/postuserapi_controller.dart';

class UserDataScreen extends StatelessWidget {
  UserDataScreen({Key? key}) : super(key: key);
  PostUserController postUserController = Get.put(PostUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Data"),
      ),
      body: Obx(
        () => SizedBox(
          height: 500,
          child: ListView.builder(
            controller: postUserController.scrollController,
            itemCount: postUserController.appData.length,
            itemBuilder: ((context, index) {
              final data = postUserController.appData.value[index];
              return Column(
                children: [
                  //Text("${data.postId}"),
                  Text("${data.id}"),
                  Text("${data.name}"),
                  Text("${data.email}"),
                  Text("${data.body}"),
                  postUserController.appData.value.length - 1 == index
                      ? CircularProgressIndicator()
                      : const SizedBox(),
                ],
              );
            }),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        postUserController.scrollUp();
      }),
    );
  }
}
