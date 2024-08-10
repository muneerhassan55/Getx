import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/faviourite/faviourite_list_controler.dart';

class FaviouriteScreen extends StatefulWidget {
  const FaviouriteScreen({super.key});

  @override
  State<FaviouriteScreen> createState() => _FaviouriteScreenState();
}

class _FaviouriteScreenState extends State<FaviouriteScreen> {
  FaviouriteListControler _faviouriteListControler =
      Get.put(FaviouriteListControler());
  @override
  Widget build(BuildContext context) {
    print('Build');

    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView.builder(
              itemCount: _faviouriteListControler.fruitList.length,
              // itemCount: fruitList.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: ListTile(
                            onTap: () {
                              if (_faviouriteListControler.temfruitList
                                  .contains(_faviouriteListControler
                                      .fruitList[index]
                                      .toString())) {
                                _faviouriteListControler.removeToFaviourite(
                                    _faviouriteListControler.fruitList[index]
                                        .toString());
                              } else {
                                _faviouriteListControler.addToFaviourite(
                                    _faviouriteListControler.fruitList[index]
                                        .toString());
                              }
                            },
                            title: Text(_faviouriteListControler
                                .fruitList[index]
                                .toString()),
                            trailing: Obx(
                              () => Icon(
                                Icons.favorite,
                                color: _faviouriteListControler.temfruitList
                                        .contains(_faviouriteListControler
                                            .fruitList[index]
                                            .toString())
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ))));
              }),
        ),
      ),
    );
  }
}
