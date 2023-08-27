import 'package:aidana/src/domain/usecase/session_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final Logout logout;

  AuthCubit(this.logout) : super(const AuthState.init());

  Future<void> onSignInSuccess() async {
    emit(const AuthState.userAuthorized());
  }

  Future<void> onLogout() async {
    await logout.logout();
    emit(const AuthState.userUnauthorized());
  }
}
