import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'gender')
  String gender;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'updated_at')
  String updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
