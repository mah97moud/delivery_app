import 'package:core/core/routes/app_routes.dart';
import 'package:core/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: LightAppTheme.theme,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
