import 'package:flutter/material.dart';
import 'package:flutter_reference_app_2/application/usecase/user/state/user_provider.dart';
import 'package:flutter_reference_app_2/application/usecase/user/user_usecase.dart';
import 'package:flutter_reference_app_2/presentation/page/user/component/text_field.dart';
import 'package:flutter_reference_app_2/presentation/page/user/component/user_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.watch(userUsecaseProvider).registerUser(
              uid: ref.watch(uidProvider),
              userName: ref.watch(userNameControllerProvider).text,
              image: ref.watch(selectedImageProvider),
            );
      },
      child: const Text('Register'),
    );
  }
}