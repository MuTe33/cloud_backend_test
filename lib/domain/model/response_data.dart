import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

@JsonSerializable()
class ResponseData {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'meta')
  Map<String, dynamic> meta;

  @JsonKey(name: 'data')
  List<dynamic> data;

  ResponseData({
    this.code,
    this.meta,
    this.data,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
