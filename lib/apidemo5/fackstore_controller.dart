import 'package:get/get.dart';
import 'package:vapidemo/apidemo5/fackstore_modal.dart';
import 'package:vapidemo/apidemo5/fackstore_service.dart';

class FackStorieController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    fackStroreConteollerMethod();
    super.onInit();
  }

  RxList<FackStore> fackstorieModalcontroller = <FackStore>[].obs;

  Future<void> fackStroreConteollerMethod() async {
    final result = await FackStoreService.FackStoreServiceMrthod();
    if (result != null) {
      fackstorieModalcontroller.value = result;
    }
  }
}
