import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_and_dio_test/api/TestApiClient.dart';
import 'package:get_and_dio_test/data/dtos/something/SomethingFuckedDto.dart';
import 'package:get_and_dio_test/utils/DioClient.dart';
import 'package:get_and_dio_test/utils/logger_utils.dart';

class TestController extends GetxController {

  SomethingFuckedDto? data;
  final List<FuckedItemDto> list = <FuckedItemDto>[].obs;

  @override
  void onInit () {
    list.clear();
  }

  Future<void> getData ()async {

    list.clear();

    final client = TestApiClient(DioClient.dio);
    await client.getData({}).then((result) {
      data = result;
    }).catchError((Object obj) {
      // non-200 error goes here.
      switch (obj.runtimeType) {
        case DioError:
        // Here's the sample to get the failed response error code and message
          final res = (obj as DioError).response;
          customLogger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
          break;
        default:
      }
    });

    // data = await client.getData({});
    list.addAll(data!.gangnamMineralWaterInfo!.row!);

  }
}