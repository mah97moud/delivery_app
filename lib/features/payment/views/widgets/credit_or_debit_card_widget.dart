import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';

class CreditOrDebitCardWidget extends StatelessWidget {
  const CreditOrDebitCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
