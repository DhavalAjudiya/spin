import 'package:get/get.dart';
import 'package:vapidemo/apidemo4/engine_modal.dart';
import 'package:vapidemo/apidemo4/engine_service.dart';

class EngineController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    engineControllerMethid();
    super.onInit();
  }

  RxList<EngineApiDemo> engineModal = <EngineApiDemo>[].obs;

  Future<void> engineControllerMethid() async {
    final result = await EngineService.engineServiceMethod();
    if (result != null) {
      engineModal.value = result;
    }
  }
}
