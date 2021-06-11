import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TestApiClient.g.dart';

@RestApi(baseUrl: "http://openapi.seoul.go.kr:8088/sample/json")
abstract class TestApiClient {
  factory TestApiClient (Dio dio, {String baseUrl}) = _TestApiClient;

  @GET("/SPOP_LOCAL_RESD_DONG/1/5/20200617")
  Future<List<PopularInfoDto>> getData(@Body() Map<String, dynamic> body);
}


//결국 아래가 모델인거네??
@JsonSerializable ()
class PopularInfoDto {
  String? STDR_DE_ID;
  String? TMZON_PD_SE;
  String? ADSTRD_CODE_SE;
  String? TOT_LVPOP_CO;
  String? MALE_F0T9_LVPOP_CO;
  String? MALE_F10T14_LVPOP_CO;
  String? MALE_F15T19_LVPOP_CO;
  String? MALE_F20T24_LVPOP_CO;
  String? MALE_F25T29_LVPOP_CO;
  String? MALE_F30T34_LVPOP_CO;
  String? MALE_F35T39_LVPOP_CO;

  PopularInfoDto({
    this.STDR_DE_ID,
    this.TMZON_PD_SE,
    this.ADSTRD_CODE_SE,
    this.TOT_LVPOP_CO,
    this.MALE_F0T9_LVPOP_CO,
    this.MALE_F10T14_LVPOP_CO,
    this.MALE_F15T19_LVPOP_CO,
    this.MALE_F20T24_LVPOP_CO,
    this.MALE_F25T29_LVPOP_CO,
    this.MALE_F30T34_LVPOP_CO,
    this.MALE_F35T39_LVPOP_CO
  });


  factory PopularInfoDto.fromJson(Map<String, dynamic> json) => _$PopularInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$PopularInfoDtoToJson(this);
}