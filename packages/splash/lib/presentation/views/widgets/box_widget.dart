import 'package:core/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.0,
      width: 104.0,
      margin: const EdgeInsets.only(
        top: 63.0,
        bottom: 24.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(AppAssets.box),
    );
  }
}
