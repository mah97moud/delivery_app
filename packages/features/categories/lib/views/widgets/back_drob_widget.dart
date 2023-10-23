import 'package:core/core.dart';
import 'package:flutter/material.dart';

class BackDrobWidget extends StatelessWidget {
  const BackDrobWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '~150',
          style: StylesManager.textStyle17.copyWith(
            color: const Color(0xff06BE77),
          ),
        ),
        AppSizedBoxed.sizedBoxW5,
        Text(
          'gr / piece',
          style: StylesManager.textStyle17.copyWith(
            color: const Color(0xff06BE77),
          ),
        )
      ],
    );
  }
}
