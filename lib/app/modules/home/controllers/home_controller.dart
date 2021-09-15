import 'package:get/get.dart';

class HomeController extends GetxController {
  final _pageIndex = 0.obs;
  get pageIndex => this._pageIndex.value;
  set pageIndex(value) => this._pageIndex.value = value;

  void onPageChange(int value) {
    pageIndex = value;
  }

  void onBackPress() {
    pageIndex = 0;
  }
}
