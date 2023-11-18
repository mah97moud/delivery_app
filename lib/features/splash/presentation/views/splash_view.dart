import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../common/widgets/widgets.dart';
import '../../splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBgColor,
      body: Stack(
        children: [
          const SplashBgImage(),
          const AppLogo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 584.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const BoxWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 41.0.w),
                      child: Text(
                        'Non-Contact Deliveries',
                        style: StylesManager.textStyle34,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    AppSizedBoxed.sizedBoxH25,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 19.0.w),
                      child: Text(
                        'When placing an order, select the option “Contactless delivery” '
                        'and the courier will leave your order at the door.',
                        style: StylesManager.textStyle17,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    AppSizedBoxed.sizedBoxH48,
                    PrimaryBotton(
                      onPressed: () {
                        context.goNamed(RoutesNames.categories);
                      },
                    ),
                    AppSizedBoxed.sizedBoxH32,
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'DISMISS',
                        style: StylesManager.textStyle15.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
