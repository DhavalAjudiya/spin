import 'package:get/get.dart';
import 'package:vapidemo/apidemo8/author_modal.dart';
import 'package:vapidemo/apidemo8/author_service.dart';

class AuthorController extends GetxController {
  @override
  void onInit() {
    authorControllerMethod();
    // TODO: implement onInit
    super.onInit();
  }

  Rx<Author> authorModalObj = Author().obs;
  Future<void> authorControllerMethod() async {
    final result = await AuthorService.aurthorServiceMethod();
    if (result != null) {
      authorModalObj.value = result;
    }
  }
}
