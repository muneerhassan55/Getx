import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/color/color_change_screen.dart';
import 'package:getx_tutorial/counter/counter_screen.dart';
import 'package:getx_tutorial/faviourite/faviourite_screen.dart';
import 'package:getx_tutorial/home_Screen.dart';
import 'package:getx_tutorial/switch/switch_notification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FaviouriteScreen());
  }
}
