import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ColorChangeControler extends GetxController {
  RxDouble opacity = 0.4.obs;

  setOpacity(double value) {
    opacity.value = value;
  }
}
