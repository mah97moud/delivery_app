import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/styles_manager.dart';

class PaymentTextField extends StatelessWidget {
  const PaymentTextField({
    super.key,
    this.iconPath,
    required this.label,
    this.textInputFormatters,
    this.maxLength,
  });

  final String label;
  final String? iconPath;
  final List<TextInputFormatter>? textInputFormatters;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Text(
            label,
            style: StylesManager.textStyle14.copyWith(
              fontFamily: StylesManager.sfProDisplayFont,
              fontWeight: FontWeight.w400,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          style: StylesManager.textStyle17.copyWith(
            color: AppColors.textPrimary,
            letterSpacing: -0.41,
          ),
          maxLength: maxLength,
          inputFormatters: textInputFormatters,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 13.0,
            ),
            counterText: '',
            suffixIcon: iconPath != null
                ? Container(
                    padding: const EdgeInsets.only(
                      right: 15.0,
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 32.0,
                      maxHeight: 20.0,
                    ),
                    child: SvgPicture.asset(
                      iconPath ?? '',
                    ),
                  )
                : null,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
              borderSide: BorderSide(
                color: AppColors.formBorder,
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
              borderSide: BorderSide(
                color: AppColors.formBorder,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
