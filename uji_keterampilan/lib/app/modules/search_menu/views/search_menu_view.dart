import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_menu_controller.dart';

class SearchMenuView extends GetView<SearchMenuController> {
  const SearchMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchMenuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
