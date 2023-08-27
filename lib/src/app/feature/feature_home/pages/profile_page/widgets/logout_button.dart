part of '../profile_page.dart';

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 29,
        ),
        alignment: Alignment.centerLeft,
        borderRadius: BorderRadius.zero,
        color: CupertinoColors.white,
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: const Text(LocalKeys.logOut),
                content: const Text(LocalKeys.logoutDialogMessage),
                actions: [
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(LocalKeys.cancel),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      context.read<AuthCubit>().onLogout();
                    },
                    child: const Text(LocalKeys.logOut),
                  ),
                ],
              );
            },
          );
        },
        child: const Text(
          LocalKeys.logOut,
          style: TextStyle(
            color: CupertinoColors.systemRed,
          ),
        ),
      ),
    );
  }
}
