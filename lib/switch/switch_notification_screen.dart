import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/switch/switch_controller.dart';

class SwitchNotificationScreen extends StatefulWidget {
  const SwitchNotificationScreen({super.key});

  @override
  State<SwitchNotificationScreen> createState() =>
      _SwitchNotificationScreenState();
}

class _SwitchNotificationScreenState extends State<SwitchNotificationScreen> {
  final SwitchController _switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    print('Build');

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notifications'),
                Obx(() => Switch(
                    value: _switchController.notification.value,
                    onChanged: (value) {
                      _switchController.changeSwitch(value);
                    }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
