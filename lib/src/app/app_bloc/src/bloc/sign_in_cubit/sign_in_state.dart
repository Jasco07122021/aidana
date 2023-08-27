part of 'sign_in_cubit.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.init() = _Init;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.success() = _Success;

  const factory SignInState.fail(String error) = _Fail;
}
