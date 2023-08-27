part of 'auth_page.dart';

class _AuthListener extends StatelessWidget {
  final Widget child;

  const _AuthListener({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.read<AuthCubit>().onSignInSuccess();
            EasyLoading.dismiss();
          },
          fail: (error) {
            EasyLoading.dismiss();
            error.showErrorSnackBar();
          },
          loading: () {
            EasyLoading.show();
          },
        );
      },
      child: child,
    );
  }
}
