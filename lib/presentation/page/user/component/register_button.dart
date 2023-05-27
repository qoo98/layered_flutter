import 'package:flutter/material.dart';
import 'package:flutter_reference_app_2/application/usecase/user/state/user_provider.dart';
import 'package:flutter_reference_app_2/application/usecase/user/user_usecase.dart';
import 'package:flutter_reference_app_2/presentation/page/home_page.dart';
import 'package:flutter_reference_app_2/presentation/page/user/component/text_field.dart';
import 'package:flutter_reference_app_2/presentation/page/user/component/user_image_edit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        await ref.watch(userUsecaseProvider).registerUser(
              uid: ref.watch(uidProvider),
              userName: ref.watch(userNameControllerProvider).text,
              image: ref.watch(selectedImageProvider),
            );
        ref.watch(currentIndexProvider.notifier).state =
            IndexMode.profile.index;
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false, // false を返すことで全ての画面履歴を削除します
        );
      },
      child: const Text('Register'),
    );
  }
}
