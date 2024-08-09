import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        elevation: 5,
        child: ListTile(
          title: Text('Getx Tutorial'),
          subtitle: Text("Tutorial jjdskorjenr idoo"),
          onTap: () {
            Get.bottomSheet(
              backgroundColor: Colors.lightBlue,
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text('Light Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text('Dark Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Error', 'Yes this',
              onTap: (snap) {},
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.blue);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
