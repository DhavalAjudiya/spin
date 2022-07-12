import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo8/author_controller.dart';

class AuthorScreen extends StatelessWidget {
  AuthorScreen({Key? key}) : super(key: key);
  final AuthorController authorScreenObj = Get.put(AuthorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Api Data"),
      ),
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: ListView.separated(
                itemCount:
                    authorScreenObj.authorModalObj.value.quotes?.length ?? 0,
                itemBuilder: (context, index) {
                  final data =
                      authorScreenObj.authorModalObj.value.quotes?[index];
                  final data1 = authorScreenObj.authorModalObj.value.total;
                  final data2 = authorScreenObj.authorModalObj.value.skip;
                  final data3 = authorScreenObj.authorModalObj.value.limit;
                  return Column(
                    children: [
                      Text("${data?.id}"),
                      Text("${data?.author}"),
                      Text("${data?.quote}"),
                      Text("${data1}"),
                      Text("${data2}"),
                      Text("${data3}"),
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
          ),
        ],
      ),
    );
  }
}
