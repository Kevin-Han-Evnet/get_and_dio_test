import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_and_dio_test/controller/TestController.dart';

class TestPage extends GetView<TestController> {

  @override
  Widget build(BuildContext context) {

    controller.getData();

    return Scaffold(
      appBar: AppBar (
        title: Text ("히히"),
      ),
      body: Container (
        //nothign yet;
      ),
      backgroundColor: Colors.white,
    );
  }
}