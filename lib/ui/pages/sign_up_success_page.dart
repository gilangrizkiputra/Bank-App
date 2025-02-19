import 'package:bank_application/ui/widgets/success.dart';
import 'package:flutter/material.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSuccessPage(
      title: 'Akun Berhasil\nTerdaftar',
      subTitle: 'Grow your finance start\ntogether with us',
      buttonTitle: 'Get Started',
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      },
    );
  }
}
