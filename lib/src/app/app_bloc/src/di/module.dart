import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/profile_cubit/profile_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/sign_in_cubit/sign_in_cubit.dart';
import 'package:aidana/src/domain/usecase/auth_usecase.dart';
import 'package:aidana/src/domain/usecase/session_usecase.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppBlocModule {
  AuthCubit provideAuthCubit(Logout logout) {
    return AuthCubit(logout);
  }

  SignInCubit provideSignInCubit(SignIn signIn) {
    return SignInCubit(signIn);
  }

  ProfileCubit provideProfileCubit(
    GetEmail getEmail,
    GetNickName getNickName,
  ) {
    return ProfileCubit(getEmail, getNickName);
  }
}
