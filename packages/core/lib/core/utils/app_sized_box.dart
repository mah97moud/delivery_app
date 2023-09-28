import 'package:flutter/material.dart';

sealed class AppSizedBoxed {
  AppSizedBoxed._();

  static const sizedBoxH48 = SizedBox(
    height: 48.0,
  );
  static const sizedBoxH32 = SizedBox(
    height: 32.0,
  );
  static const sizedBoxH25 = SizedBox(
    height: 25.0,
  );
  static const sizedBoxH20 = SizedBox(
    height: 20.0,
  );
  static const sizedBoxH16 = SizedBox(
    height: 16.0,
  );
  static const sizedBoxH10 = SizedBox(
    height: 10.0,
  );
}
