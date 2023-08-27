import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_body.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SignInBody {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;

  SignInBody(this.email, this.password);

  factory SignInBody.fromJson(Map<String, dynamic> json) =>
      _$SignInBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SignInBodyToJson(this);
}
