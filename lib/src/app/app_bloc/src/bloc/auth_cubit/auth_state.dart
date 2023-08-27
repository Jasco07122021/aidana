part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.init() = _Init;

  const factory AuthState.userAuthorized() = _UserAuthorized;

  const factory AuthState.userUnauthorized() = _UserUnauthorized;
}
