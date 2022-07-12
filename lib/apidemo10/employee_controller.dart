import 'package:get/get.dart';
import 'package:vapidemo/apidemo10/employeeData_modal.dart';
import 'package:vapidemo/apidemo10/employee_service.dart';

class EmployeeDataController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    employeeControllerMethod();
    super.onInit();
  }

  Rx<EmployeeData> employeeDataModalObj = EmployeeData().obs;
  Future<void> employeeControllerMethod() async {
    final result = await EmployeeDataService.employeeDataServiceMethod();
    if (result != null) {
      employeeDataModalObj.value = result;
    }
  }
}
