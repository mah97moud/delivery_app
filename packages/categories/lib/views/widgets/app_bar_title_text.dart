import 'package:core/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText(
    this.title, {
    super.key,
    this.style,
  });
  final String? title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: style ?? StylesManager.textStyle34,
    );
  }
}
