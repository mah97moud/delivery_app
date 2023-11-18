import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../views.dart';
import 'card_number_formater.dart';
import 'expiry_date_formatter.dart';

class PaymentFormSection extends StatelessWidget {
  const PaymentFormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PaymentTextField(
          label: 'Name on card',
        ),
        AppSizedBoxed.sizedBoxH32,
        PaymentTextField(
          label: 'Card Number',
          iconPath: AppAssets.mcSymbol,
          maxLength: 19,
          textInputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            CardNumberFormater(),
          ],
        ),
        AppSizedBoxed.sizedBoxH32,
        Row(
          children: [
            Expanded(
              child: PaymentTextField(
                label: 'Expiry Date',
                maxLength: 5,
                textInputFormatters: [
                  ExpiryDateFormatter(),
                ],
              ),
            ),
            AppSizedBoxed.sizedBoxW22,
            Expanded(
              child: PaymentTextField(
                label: 'CVC',
                iconPath: AppAssets.hint,
                maxLength: 3,
                textInputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
