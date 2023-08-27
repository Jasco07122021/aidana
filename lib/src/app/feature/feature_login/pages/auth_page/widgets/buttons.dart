part of '../auth_page.dart';

class _Buttons extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _Buttons({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        right: 16,
        left: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CupertinoButton.filled(
            child: const Text(LocalKeys.signIn),
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                context.read<SignInCubit>().checkSignIn(
                      emailController.text,
                      passwordController.text,
                    );
              }
            },
          ),
          const SizedBox(height: 18),
          CupertinoButton.filled(
            child: const Text(LocalKeys.signUp),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
