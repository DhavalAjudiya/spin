import 'package:get/get.dart';
//import 'package:vapidemo/apidemo7/userpage_service.dart';
import 'package:vapidemo/apidemo9/userdata_modal.dart';
import 'package:vapidemo/apidemo9/userdata_service.dart';

class UserDataController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    userDataControllerMethod();
    super.onInit();
  }

  Rx<UserData> userDataModalObj = UserData().obs;

  Future<void> userDataControllerMethod() async {
    final result = await UserDataService.userDataService();
    if (result != null) {
      userDataModalObj.value = result;
    }
  }
}
