part of '../profile_page.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 38,
            bottom: 15,
          ),
          child: SizedBox.square(
            dimension: 64,
            child: SvgPicture.asset(
              AppIcons.icProfile,
              color: CupertinoColors.black,
              fit: BoxFit.fill,
            ),
          ),
        ),
        BlocSelector<ProfileCubit, ProfileState, String?>(
          selector: (state) {
            return state.nickName;
          },
          builder: (context, state) {
            return Visibility(
              visible: state != null,
              child: Text(
                state ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 27),
          child: BlocSelector<ProfileCubit, ProfileState, String>(
            selector: (state) {
              return state.email;
            },
            builder: (context, state) {
              return Text(
                state,
                style: const TextStyle(
                  color: CupertinoColors.inactiveGray,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
