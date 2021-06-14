// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TestApiClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TestApiClient implements TestApiClient {
  _TestApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??=
        'http://openapi.seoul.go.kr:8088/42504e5071706c6139314f4545615a/json';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SomethingFuckedDto> getData(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SomethingFuckedDto>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/gangnamMineralWaterInfo/1/50/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SomethingFuckedDto.fromJson(_result.data!);
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
