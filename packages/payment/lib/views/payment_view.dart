import 'package:core/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/views/widgets/payment_form_section.dart';
import 'package:payment/views/widgets/widgets.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: StylesManager.textStyle17.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Credit / Debit card',
                    style: StylesManager.textStyle30,
                  ),
                ],
              ),
              AppSizedBoxed.sizedBoxH20,
              const CreditOrDebitCardWidget(),
              AppSizedBoxed.sizedBoxH24,
              SvgPicture.asset(
                AppAssets.takeAPhotoIcon,
              ),
              AppSizedBoxed.sizedBoxH13,
              const PaymentFormSection(),
              AppSizedBoxed.sizedBoxH56,
              Row(
                children: [
                  Expanded(
                    child: PrimaryBotton(
                      onPressed: () {},
                      tilte: 'use this card'.toUpperCase(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
