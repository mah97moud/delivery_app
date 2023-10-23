import 'package:core/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment/views/widgets/card_number_formater.dart';
import 'package:payment/views/widgets/expiry_date_formatter.dart';
import 'package:payment/views/widgets/payment_text_field.dart';

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
