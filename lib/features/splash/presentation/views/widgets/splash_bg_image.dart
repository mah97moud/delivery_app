import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class SplashBgImage extends StatelessWidget {
  const SplashBgImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.splashBg), fit: BoxFit.cover),
      ),
    );
  }
}
