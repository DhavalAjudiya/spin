import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vapidemo/apidemo9/userdata_controller.dart';

class UserDataScreen extends StatelessWidget {
  UserDataScreen({Key? key}) : super(key: key);
  final UserDataController userDataScreenObj = Get.put(UserDataController());

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
              itemCount:
                  userDataScreenObj.userDataModalObj.value.users?.length ?? 0,
              itemBuilder: (context, index) {
                final data =
                    userDataScreenObj.userDataModalObj.value.users?[index];
                return Column(
                  children: [
                    Text("${data?.id}"),
                    Text("${data?.firstName}"),
                    Text("${data?.lastName}"),
                    Text("${data?.maidenName}"),
                    Text("${data?.age}"),
                    Text("${data?.gender}"),
                    Text("${data?.email}"),
                    Text("${data?.phone}"),
                    Text("${data?.username}"),
                    Text("${data?.password}"),
                    Text("${data?.birthDate}"),
                    Text("${data?.image}"),
                    Text("${data?.bloodGroup}"),
                    Text("${data?.height}"),
                    Text("${data?.weight}"),
                    Text("${data?.hair}"),
                    Text("${data?.hair?.color}"),
                    Text("${data?.hair?.type}"),
                    Text("${data?.domain}"),
                    Text("${data?.ip}"),
                    Text("${data?.address}"),
                    Text("${data?.address?.address}"),
                    Text("${data?.address?.city}"),
                    Text("${data?.address?.coordinates}"),
                    Text("${data?.address?.coordinates?.lat}"),
                    Text("${data?.address?.coordinates?.lng}"),
                    Text("${data?.address?.postalCode}"),
                    Text("${data?.address?.state}"),
                    Text("${data?.macAddress}"),
                    Text("${data?.university}"),
                    Text("${data?.bank}"),
                    Text("${data?.bank?.cardExpire}"),
                    Text("${data?.bank?.cardNumber}"),
                    Text("${data?.bank?.cardType}"),
                    Text("${data?.bank?.currency}"),
                    Text("${data?.bank?.iban}"),
                    Text("${data?.company}"),
                    Text("${data?.company?.address}"),
                    Text("${data?.company?.address?.city}"),
                    Text("${data?.company?.address?.coordinates}"),
                    Text("${data?.company?.address?.coordinates?.lat}"),
                    Text("${data?.company?.address?.coordinates?.lng}"),
                    Text("${data?.company?.address?.postalCode}"),
                    Text("${data?.company?.address?.state}"),
                    Text("${data?.company?.department}"),
                    Text("${data?.company?.name}"),
                    Text("${data?.company?.title}"),
                    Text("${data?.ein}"),
                    Text("${data?.ssn}"),
                    Text("${data?.userAgent}"),
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
        )
      ]),
    );
  }
}
