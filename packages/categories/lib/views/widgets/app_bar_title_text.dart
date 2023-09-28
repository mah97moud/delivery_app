import 'package:core/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText(
    this.title, {
    super.key,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: StylesManager.textStyle34,
    );
  }
}
