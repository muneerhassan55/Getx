import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/counter/counter_controler.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterControler _counterControler = Get.put(CounterControler());
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Obx(() => Text(_counterControler.counter.value.toString())),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _counterControler.increment();
      }),
    );
  }
}
