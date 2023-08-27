import 'package:aidana/src/data/core/result.dart';
import 'package:aidana/src/domain/model/sign_in_result.dart';
import 'package:aidana/src/domain/repository/src/base_repository.dart';

abstract class AuthRepository extends BaseRepository{
  Future<Result<SignInResult>> signIn(
    String email,
    String password,
  );
}
