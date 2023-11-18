import 'package:flutter/material.dart';

import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';

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
