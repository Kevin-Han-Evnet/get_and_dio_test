// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SomethingFuckedDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FuckedItemDto _$FuckedItemDtoFromJson(Map<String, dynamic> json) {
  return FuckedItemDto(
    ID: (json['ID'] as num?)?.toDouble(),
    NM: json['NM'] as String?,
    ADDR: json['ADDR'] as String?,
    ADDR_OLD: json['ADDR_OLD'] as String?,
    PEOPLE_CNT: json['PEOPLE_CNT'] as String?,
    CHECK_DT: json['CHECK_DT'] as String?,
    CHECK_RSLT: json['CHECK_RSLT'] as String?,
    IMPROPT_ITEM: json['IMPROPT_ITEM'] as String?,
  );
}

Map<String, dynamic> _$FuckedItemDtoToJson(FuckedItemDto instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'NM': instance.NM,
      'ADDR': instance.ADDR,
      'ADDR_OLD': instance.ADDR_OLD,
      'PEOPLE_CNT': instance.PEOPLE_CNT,
      'CHECK_DT': instance.CHECK_DT,
      'CHECK_RSLT': instance.CHECK_RSLT,
      'IMPROPT_ITEM': instance.IMPROPT_ITEM,
    };

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return ResponseDto(
    list_total_count: json['list_total_count'] as int?,
    result: json['result'] == null
        ? null
        : ResultDto.fromJson(json['result'] as Map<String, dynamic>),
    row: (json['row'] as List<dynamic>?)
        ?.map((e) => FuckedItemDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResponseDtoToJson(ResponseDto instance) =>
    <String, dynamic>{
      'list_total_count': instance.list_total_count,
      'result': instance.result,
      'row': instance.row,
    };

SomethingFuckedDto _$SomethingFuckedDtoFromJson(Map<String, dynamic> json) {
  return SomethingFuckedDto(
    gangnamMineralWaterInfo: json['gangnamMineralWaterInfo'] == null
        ? null
        : ResponseDto.fromJson(
            json['gangnamMineralWaterInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SomethingFuckedDtoToJson(SomethingFuckedDto instance) =>
    <String, dynamic>{
      'gangnamMineralWaterInfo': instance.gangnamMineralWaterInfo,
    };
