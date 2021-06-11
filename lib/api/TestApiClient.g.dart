// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TestApiClient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularInfoDto _$PopularInfoDtoFromJson(Map<String, dynamic> json) {
  return PopularInfoDto(
    STDR_DE_ID: json['STDR_DE_ID'] as String?,
    TMZON_PD_SE: json['TMZON_PD_SE'] as String?,
    ADSTRD_CODE_SE: json['ADSTRD_CODE_SE'] as String?,
    TOT_LVPOP_CO: json['TOT_LVPOP_CO'] as String?,
    MALE_F0T9_LVPOP_CO: json['MALE_F0T9_LVPOP_CO'] as String?,
    MALE_F10T14_LVPOP_CO: json['MALE_F10T14_LVPOP_CO'] as String?,
    MALE_F15T19_LVPOP_CO: json['MALE_F15T19_LVPOP_CO'] as String?,
    MALE_F20T24_LVPOP_CO: json['MALE_F20T24_LVPOP_CO'] as String?,
    MALE_F25T29_LVPOP_CO: json['MALE_F25T29_LVPOP_CO'] as String?,
    MALE_F30T34_LVPOP_CO: json['MALE_F30T34_LVPOP_CO'] as String?,
    MALE_F35T39_LVPOP_CO: json['MALE_F35T39_LVPOP_CO'] as String?,
  );
}

Map<String, dynamic> _$PopularInfoDtoToJson(PopularInfoDto instance) =>
    <String, dynamic>{
      'STDR_DE_ID': instance.STDR_DE_ID,
      'TMZON_PD_SE': instance.TMZON_PD_SE,
      'ADSTRD_CODE_SE': instance.ADSTRD_CODE_SE,
      'TOT_LVPOP_CO': instance.TOT_LVPOP_CO,
      'MALE_F0T9_LVPOP_CO': instance.MALE_F0T9_LVPOP_CO,
      'MALE_F10T14_LVPOP_CO': instance.MALE_F10T14_LVPOP_CO,
      'MALE_F15T19_LVPOP_CO': instance.MALE_F15T19_LVPOP_CO,
      'MALE_F20T24_LVPOP_CO': instance.MALE_F20T24_LVPOP_CO,
      'MALE_F25T29_LVPOP_CO': instance.MALE_F25T29_LVPOP_CO,
      'MALE_F30T34_LVPOP_CO': instance.MALE_F30T34_LVPOP_CO,
      'MALE_F35T39_LVPOP_CO': instance.MALE_F35T39_LVPOP_CO,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TestApiClient implements TestApiClient {
  _TestApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://openapi.seoul.go.kr:8088/sample/json';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<PopularInfoDto>> getData(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<PopularInfoDto>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/SPOP_LOCAL_RESD_DONG/1/5/20200617',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => PopularInfoDto.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
