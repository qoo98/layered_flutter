import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Signin Email アドレス入力用のテキストコントローラープロバイダー
final signinEmailControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (_) => TextEditingController(),
);

/// Signup Email アドレス入力用のテキストコントローラープロバイダー
final signupEmailControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (_) => TextEditingController(),
);

/// Email アドレス入力用テキストフィールド
class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Email Address',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}

/// Signin Password 入力用のテキストコントローラープロバイダー
final signinPasswordControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (_) => TextEditingController(),
);

/// Signup Password 入力用のテキストコントローラープロバイダー
final signUpPasswordControllerProvider =
    StateProvider.autoDispose<TextEditingController>(
  (_) => TextEditingController(),
);

/// Password 入力用テキストフィールド
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({required this.controller, super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Password',
      ),
      obscureText: true,
    );
  }
}