import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/color/color_change_controler.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  final ColorChangeControler colorChangeControler =
      Get.put(ColorChangeControler());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 400,
              color: Colors.red.withOpacity(colorChangeControler.opacity.value),
            ),
          ),
          Obx(() => Slider(
              value: colorChangeControler.opacity.value,
              onChanged: (value) {
                colorChangeControler.setOpacity(value);
              }))
        ],
      ),
    );
  }
}
