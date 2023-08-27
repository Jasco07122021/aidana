import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/profile_cubit/profile_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/sign_in_cubit/sign_in_cubit.dart';
import 'package:get_it/get_it.dart';

mixin AppBlocHelper {
  static AuthCubit getAuthCubit() => GetIt.I.get<AuthCubit>();

  static SignInCubit getSignInCubit() => GetIt.I.get<SignInCubit>();

  static ProfileCubit getProfileCubit() => GetIt.I.get<ProfileCubit>();
}
