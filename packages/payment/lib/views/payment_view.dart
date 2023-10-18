import 'package:core/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit / Debit card',
                style: StylesManager.textStyle30,
              ),
              AppSizedBoxed.sizedBoxH20,
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 240.0,
                    width: 374.0,
                    padding: const EdgeInsets.all(31),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFB993D6),
                            Color(0xFF8CA6DB),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AppAssets.mcSymbol,
                        ),
                        AppSizedBoxed.sizedBoxH25,
                        Center(
                          child: Text(
                            '4747  4747  4747  4747',
                            style: StylesManager.textStyle26,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        AppSizedBoxed.sizedBoxH47,

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'alexandra Smith'.toUpperCase(),
                              style: StylesManager.textStyle20,
                            ),
                            Text(
                              '07/2',
                              style: StylesManager.textStyle20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -70,
                    top: -50,
                    child: Container(
                      width: 335.0,
                      height: 335.0,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.12),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
