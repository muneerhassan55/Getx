import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class FaviouriteListControler extends GetxController {
  RxList<String> fruitList = [
    'Mango',
    'Bannana',
    'Apple',
    'Abc',
    'OKs',
    'red',
    'yellow',
    'lempn',
    'Orange'
  ].obs;
  RxList temfruitList = [].obs;
  addToFaviourite(String value) {
    temfruitList.add(value);
  }

  removeToFaviourite(String value) {
    temfruitList.remove(value);
  }
}
