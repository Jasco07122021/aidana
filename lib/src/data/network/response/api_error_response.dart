import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class ApiErrorResponse {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'errors')
  final List? errors;

  ApiErrorResponse(this.name, this.message, this.status, this.errors);

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorResponseToJson(this);
}
