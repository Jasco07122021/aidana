import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  ApiResponse(
    this.data, {
    this.error,
    required this.success,
  });

  final T? data;
  @JsonKey(defaultValue: true)
  final bool success;
  final String? error;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? data) fromJsonT,
  ) {
    return _$ApiResponseFromJson<T>(json, fromJsonT);
  }
}
