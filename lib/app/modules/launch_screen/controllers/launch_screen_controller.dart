import 'package:farmer_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LaunchScreenController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    if (await getUser()) {}
    return Get.toNamed(Routes.WELCOME);
  }

  Future getUser() async {
    //TODO: Implement Logic here
    await 2.delay();
    return false;
  }

  void iHaveAnAccount() {
    Get.toNamed(Routes.AUTHENTICATION);
  }

  void getStartedButton() {
    Get.toNamed(Routes.GET_STARTED);
  }
}
