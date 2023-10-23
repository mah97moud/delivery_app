
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
              animationDelay: 100.0,
            ),
            const CheckoutCellRow(
              '**** **** **** 4747',
              iconPath: AppAssets.creditCard,
              animationDelay: 100.0,
            ),
            AppSizedBoxed.sizedBoxH32,
            CheckoutTitleRow(
              'Delivery address',
              onPressed: () {},
              animationDelay: 200.0,
            ),
            const CheckoutCellRow(
              'Alexandra Smith'
              'Cesu 31 k-2 5.st, SIA Chili'
              'Riga'
              'LV–1012'
              'Latvia',
              iconPath: AppAssets.home,
              animationDelay: 200.0,
            ),
            AppSizedBoxed.sizedBoxH32,
            CheckoutTitleRow(
              'Delivery options',
              onPressed: () {},
              animationDelay: 300.0,
            ),
            const CheckoutCellRow(
              'I’ll pick it up myself',
              iconPath: AppAssets.walking,
              animationDelay: 300.0,
            ),
            const CheckoutCellRow(
              'By courier',
              iconPath: AppAssets.bike,
              animationDelay: 400.0,
            ),
            const CheckoutCellRow(
              'By Drone',
              iconPath: AppAssets.drone,
              animationDelay: 500.0,
            ),
            AppSizedBoxed.sizedBoxH32,
            const CustomRadioListTile(
              'Non-Contant-delivery',
            ).animate().fade(
                  delay: 600.ms,
                ),
          ],
        ),
      ),
    );
  }
}
