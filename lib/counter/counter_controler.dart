import 'package:get/get.dart';

class CounterControler extends GetxController {
  final counter = 0.obs;
  increment() {
    counter.value++;
    print(counter.value);
    
  }
}
