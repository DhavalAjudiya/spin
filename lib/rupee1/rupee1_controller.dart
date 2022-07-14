import 'package:get/get.dart';
import 'package:vapidemo/rupee1/rupee1_modal.dart';
import 'package:vapidemo/rupee1/rupee1_service.dart';

class RupeeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    rueeControllerData();
    super.onInit();
  }

  Rx<RupeeModal> getRupeeModal = RupeeModal().obs;
  Future<void> rueeControllerData() async {
    final result = await RupeeService.getRupeeData();
    if (result != null) {
      getRupeeModal.value = result;
    }
  }
}
