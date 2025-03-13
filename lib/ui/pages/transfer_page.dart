import 'package:bank_application/shared/theme.dart';
import 'package:bank_application/ui/widgets/buttons.dart';
import 'package:bank_application/ui/widgets/forms.dart';
import 'package:bank_application/ui/widgets/transfer_result_user_item.dart';
import 'package:bank_application/ui/widgets/transfer_result_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transfer',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 24,
          left: 24,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Search',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            CustomFormField(
              title: 'by username',
              isShowTitle: false,
            ),
            // buildRecentUser(),
            buildResult(),
            CustomFilledButton(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/transfer-amount');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecentUser() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Users',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 14),
            Expanded(
              child: ListView(
                children: [
                  TransferRecentUserItem(
                    imageUrl: 'assets/img_friend1.png',
                    name: 'Yonna Jie',
                    username: 'yeonna',
                    isVerified: true,
                  ),
                  TransferRecentUserItem(
                    imageUrl: 'assets/img_friend3.png',
                    name: 'John Hi',
                    username: 'jhi',
                  ),
                  TransferRecentUserItem(
                    imageUrl: 'assets/img_friend4.png',
                    name: 'Masayoshi',
                    username: 'form',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildResult() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Result',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 14),
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: Wrap(
                      spacing: 17,
                      children: [
                        TransferResultItem(
                          imageUrl: 'assets/img_friend1.png',
                          name: 'Yonna Jie',
                          username: 'yoenna',
                          isVerified: true,
                        ),
                        TransferResultItem(
                          imageUrl: 'assets/img_friend4.png',
                          name: 'Yonne Ka',
                          username: 'yoenyu',
                          isVerified: false,
                          isSelected: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
