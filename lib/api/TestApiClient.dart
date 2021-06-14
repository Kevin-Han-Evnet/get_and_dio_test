import 'package:dio/dio.dart';
import 'package:get_and_dio_test/data/dtos/something/SomethingFuckedDto.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'TestApiClient.g.dart';

@RestApi(baseUrl: "http://openapi.seoul.go.kr:8088/42504e5071706c6139314f4545615a/json")
abstract class TestApiClient {

  factory TestApiClient (Dio dio, {String baseUrl}) = _TestApiClient;

  @GET("/gangnamMineralWaterInfo/1/50/")
  Future<SomethingFuckedDto> getData(@Body() Map<String, dynamic> body);
}