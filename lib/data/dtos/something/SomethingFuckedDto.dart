import 'package:json_annotation/json_annotation.dart';
import '../CommonDto.dart';
part 'SomethingFuckedDto.g.dart';

@JsonSerializable ()
class FuckedItemDto {

  double? ID;
  String? NM;
  String? ADDR;
  String? ADDR_OLD;
  String? PEOPLE_CNT;
  String? CHECK_DT;
  String? CHECK_RSLT;
  String? IMPROPT_ITEM;



  FuckedItemDto ({
    this.ID,
    this.NM,
    this.ADDR,
    this.ADDR_OLD,
    this.PEOPLE_CNT,
    this.CHECK_DT,
    this.CHECK_RSLT,
    this.IMPROPT_ITEM
  });

  factory FuckedItemDto.fromJson (Map<String, dynamic> json) => _$FuckedItemDtoFromJson (json);
  Map<String, dynamic> toJson ()=> _$FuckedItemDtoToJson (this);

}

@JsonSerializable ()
class ResponseDto {
  int? list_total_count;
  ResultDto? result;
  List<FuckedItemDto>? row;

  ResponseDto ({
    this.list_total_count,
    this.result,
    this.row
  });

  factory ResponseDto.fromJson (Map<String, dynamic> json) => _$ResponseDtoFromJson (json);
  Map<String, dynamic> toJson ()=> _$ResponseDtoToJson(this);
}



@JsonSerializable ()
class SomethingFuckedDto {

  ResponseDto? gangnamMineralWaterInfo;

  SomethingFuckedDto({
    this.gangnamMineralWaterInfo
  });


  factory SomethingFuckedDto.fromJson(Map<String, dynamic> json) => _$SomethingFuckedDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SomethingFuckedDtoToJson(this);
}