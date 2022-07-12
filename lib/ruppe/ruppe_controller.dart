import 'package:get/get.dart';
import 'package:vapidemo/apidemo10/employeeData_modal.dart';
import 'package:vapidemo/apidemo10/employee_service.dart';
import 'package:vapidemo/ruppe/modla.dart';
import 'package:vapidemo/ruppe/service.dart';

class RupeeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getRupeeMethod();
    super.onInit();
  }

  Rx<RupeeCruptoModal> rupeeModal = RupeeCruptoModal().obs;
  Future<void> getRupeeMethod() async {
    final result = await RupeeService.getRupeeData();
    if (result != null) {
      rupeeModal.value = result;
    }
  }
}
