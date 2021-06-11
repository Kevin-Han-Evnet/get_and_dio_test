import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:get_and_dio_test/api/TestApiClient.dart';
import 'package:get_and_dio_test/utils/DioClient.dart';
import 'package:get_and_dio_test/utils/logger_utils.dart';
import '../utils/logger_utils.dart';

class TestController extends GetxController {

  late List<PopularInfoDto> data;

  Future<void> getData ()async {

    // Provide a dio instance
    DioClient.dio.options.headers["Demo-Header"] = "demo header";   // config your dio headers globally

    final client = TestApiClient(DioClient.dio);
    client.getData({}).then((data) {
      customLogger.i(data);
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

  }
}