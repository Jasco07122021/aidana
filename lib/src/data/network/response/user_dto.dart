
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class UserDTO{
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'nickname')
  final String nickname;

  UserDTO(this.id, this.email, this.nickname);


  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}