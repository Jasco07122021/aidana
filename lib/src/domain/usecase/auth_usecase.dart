import 'package:aidana/src/data/core/result.dart';

abstract class SignIn {
  Future<Result<void>> signIn(
    String email,
    String password,
  );
}
