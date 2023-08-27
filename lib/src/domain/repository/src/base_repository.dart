import 'dart:async';

import 'package:aidana/src/data/core/result.dart';
import 'package:aidana/src/data/network/response/api_response.dart';

abstract class BaseRepository {
  Future<Result<DATA>> toResult2<DATA, RESPONSE extends ApiResponse>(
    Future<RESPONSE> future, {
    required FutureOr<DATA> Function(RESPONSE response) fromSuccessResponse,
  }) async {
    try {
      final response = await future;
      if (response.success) {
        final data = await fromSuccessResponse.call(response);
        return Result.completed(data);
      }
      return Result.error(response.error);
    } catch (e) {
      return Result.error('Something is wrong, please try again');
    }
  }
}
