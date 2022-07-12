import 'package:get/get.dart';
import 'package:vapidemo/apidemo6/passengers_modal.dart';
import 'package:vapidemo/apidemo6/passengers_service.dart';

class PassengerController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    passengerMethod();
    super.onInit();
  }

  Rx<Welcome> welcomeModal = Welcome().obs;
  Future<void> passengerMethod() async {
    final result = await PassengersService.passengerServiceMethod();
    if (result != null) {
      welcomeModal.value = result;
    }
  }
}
