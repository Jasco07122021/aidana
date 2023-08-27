import 'package:aidana/src/data/core/result.dart';
import 'package:aidana/src/domain/usecase/auth_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.dart';

part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignIn _signIn;

  SignInCubit(this._signIn) : super(const SignInState.init());

  Future<void> checkSignIn(String email, String password) async {
    emit(const SignInState.loading());
    final res = await _signIn.signIn(email, password);
    switch (res.status) {
      case Status.completed:
        emit(const SignInState.success());
      case Status.error:
        emit(SignInState.fail(res.message ?? 'Something is wrong'));
    }
  }
}
