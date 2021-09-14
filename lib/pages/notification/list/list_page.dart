import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './list_controller.dart';

class ListPage extends GetView<ListController> {
    
    const ListPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ListPage'),),
            body: Container(),
        );
    }
}