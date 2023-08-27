import 'package:aidana/src/domain/usecase/session_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';

part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetEmail getEmail;
  final GetNickName getNickName;

  ProfileCubit(this.getEmail, this.getNickName)
      : super(ProfileState(null, '')) {
    init();
  }

  Future<void> init() async {
    final res = await Future.wait([
      getEmail.get(),
      getNickName.get(),
    ]);
    emit(
      state.copyWith(
        email: res.firstOrNull ?? 'Email not fount',
        nickName: res.lastOrNull ?? 'NickName not fount',
      ),
    );
  }
}
