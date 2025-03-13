import 'package:bank_application/ui/widgets/success.dart';
import 'package:flutter/material.dart';

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSuccessPage(
      title: 'Berhasil Transfer',
      subTitle: 'Use the money wisely and\ngrow your finance',
      buttonTitle: 'Back to Home',
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/home',
          (route) => false,
        );
      },
    );
  }
}
