import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;
  changeSwitch(bool value) {
    notification.value = value;
  }
}
