import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('MaterialApp'),
              centerTitle: false,
              leading: const Icon(Icons.menu),
            ),
            body: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: controller.contacts.length,
              itemBuilder: (context, index) => ListTile(
                title: Text('${controller.contacts[index].name}'),
                subtitle: Text('${controller.contacts[index].phoneNumber}'),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    '${controller.contacts[index].name?.substring(0, 1)}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          );
        });
  }
}
