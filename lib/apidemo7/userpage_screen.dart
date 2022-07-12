import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo7/userpage_controller.dart';

class UserPageScreen extends StatelessWidget {
  UserPageScreen({Key? key}) : super(key: key);
  final UserController userScreenObj = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("User Data"),
      ),
      body: Column(children: [
        Obx(
          () => Expanded(
            child: ListView.separated(
              controller: userScreenObj.scrollController,
              itemCount: userScreenObj.userData.value.length,
              itemBuilder: (context, index) {
                final data = userScreenObj.userData.value[index];
                return Column(
                  children: [
                    Text("${data.id}"),
                    Text("${data.email}"),
                    Text("${data.firstName}"),
                    Text("${data.lastName}"),
                    Image.network("${data.avatar}"),
                    userScreenObj.userModalObj.value.data!.length - 1 == index
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const SizedBox(),
                  ],
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
        ),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        userScreenObj.scrollup();
      }),
    );
  }
}
