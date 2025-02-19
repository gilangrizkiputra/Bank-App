import 'package:bank_application/shared/theme.dart';
import 'package:bank_application/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CustomSuccessPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonTitle;
  final double width;
  final VoidCallback? onPressed;

  const CustomSuccessPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.buttonTitle,
    this.width = 183,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              subTitle,
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: width,
              title: buttonTitle,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
