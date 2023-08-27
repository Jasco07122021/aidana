part of '../auth_page.dart';

class _TextFields extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _TextFields({
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: CupertinoFormSection(
        backgroundColor: Colors.transparent,
        children: [
          CupertinoTextFormFieldRow(
            placeholder: LocalKeys.loginEmail,
            controller: emailController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Invalid value';
              }
              return value.validateEmail();
            },
          ),
          CupertinoTextFormFieldRow(
            placeholder: 'Пароль',
            controller: passwordController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Invalid value';
              }
              return value.validatePassword();
            },
          ),
        ],
      ),
    );
  }
}
