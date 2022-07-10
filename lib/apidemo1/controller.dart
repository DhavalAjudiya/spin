import 'package:get/get.dart';
import 'package:vapidemo/apidemo1/service.dart';

import 'modal.dart';

class ApiController extends GetxController {
  @override
  void onInit() {
    getModalData();
    print("-------onInit------333333---------");

    super.onInit();
  }

  RxBool loding = false.obs;
  RxList<GetApiDemo> deMomodal = <GetApiDemo>[].obs;
  Future<void> getModalData() async {
    try {
      print("-------getModalData------444444---------");

      loding.value = true;
      print("-------getModalData------55555---------");

      final result = await GetApiService.getApiMethod();
      print("-------getModalData------666666---------");

      if (result != null) {
        print("-------getModalData------7777777---------");

        deMomodal.value = result as List<GetApiDemo>;
      }
      print("-------getModalData------888888---------");

      loding.value = false;
      print("-------getModalData------99999999---------");
    } catch (e) {
      print(e);
    }
  }
}
