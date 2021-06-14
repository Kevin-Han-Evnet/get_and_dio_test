// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CommonDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) {
  return ResultDto(
    code: json['code'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$ResultDtoToJson(ResultDto instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
