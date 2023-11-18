import 'package:delivery_app/features/payment/views/widgets/payment_form_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_sized_box.dart';
import '../../../core/utils/styles_manager.dart';
import '../../common/widgets/primary_botton.dart';
import 'widgets/credit_or_debit_card_widget.dart';

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
