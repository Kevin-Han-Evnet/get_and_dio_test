import 'package:get/get.dart';
import 'package:get_and_dio_test/controller/TestController.dart';

class TestBinder extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => TestController());
  }
}