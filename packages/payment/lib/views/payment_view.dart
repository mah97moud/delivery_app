import 'package:core/core/core.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
