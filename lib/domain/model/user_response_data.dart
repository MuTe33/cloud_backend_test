import 'package:json_annotation/json_annotation.dart';
import 'package:test_cloud_backend/domain/model/user.dart';

part 'user_response_data.g.dart';

@JsonSerializable()
class UserResponseData {
  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'meta')
  Map<String, dynamic> meta;

  @JsonKey(name: 'data')
  List<User> data;

  UserResponseData({
    this.code,
    this.meta,
    this.data,
  });

  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseDataToJson(this);
}
