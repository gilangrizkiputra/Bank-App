import 'package:bank_application/ui/widgets/success.dart';
import 'package:flutter/material.dart';

class ProfileSuccessPage extends StatelessWidget {
  const ProfileSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSuccessPage(
      title: 'Nice Update!',
      subTitle: 'Your data is safe with\nour system',
      buttonTitle: 'My Profile',
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      },
    );
  }
}
