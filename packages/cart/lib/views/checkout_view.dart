import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: StylesManager.textStyle17.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 24.0,
        ),
        child: ListView(
          children: [
            CheckoutTitleRow(
              'Payment Method',
              onPressed: () {
                context.goNamed(RoutesNames.payment);
              },
            ),
            const CheckoutCellRow(
              '**** **** **** 4747',
              iconPath: AppAssets.creditCard,
            ),
            AppSizedBoxed.sizedBoxH32,
            CheckoutTitleRow(
              'Delivery address',
              onPressed: () {},
            ),
            const CheckoutCellRow(
              'Alexandra Smith'
              'Cesu 31 k-2 5.st, SIA Chili'
              'Riga'
              'LV–1012'
              'Latvia',
              iconPath: AppAssets.home,
            ),
            AppSizedBoxed.sizedBoxH32,
            CheckoutTitleRow(
              'Delivery options',
              onPressed: () {},
            ),
            const CheckoutCellRow(
              'I’ll pick it up myself',
              iconPath: AppAssets.walking,
            ),
            const CheckoutCellRow(
              'By courier',
              iconPath: AppAssets.bike,
            ),
            const CheckoutCellRow(
              'By Drone',
              iconPath: AppAssets.drone,
            ),
            AppSizedBoxed.sizedBoxH32,
            const CustomRadioListTile(
              'Non-Contant-delivery',
            ),
          ],
        ),
      ),
    );
  }
}
