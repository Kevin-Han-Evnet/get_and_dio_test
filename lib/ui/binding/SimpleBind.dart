import 'package:get/get.dart';
import 'package:get_and_dio_test/ui/controller/ControllerX.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}