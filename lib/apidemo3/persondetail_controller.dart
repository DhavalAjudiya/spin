import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vapidemo/apidemo3/persondetail_modal.dart';
import 'package:vapidemo/apidemo3/persondetail_service.dart';

class PersonDetailController extends GetxController {
  RxList<PersonDetail> personDetailCon = <PersonDetail>[].obs;
  RxBool loader = false.obs;
  Future<void> persondetailMeth() async {
    final result = await PersonDetailService.personDetailMethod();
    loader.value = true;
    if (result != null) {
      personDetailCon.value = result;
    }
    loader.value = false;
  }

  @override
  void onInit() {
    persondetailMeth();
    super.onInit();
  }
}
