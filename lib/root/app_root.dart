
import 'package:auvent_flutter_internship_assessment/core/utils/themes/normal_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../configuration/routes.dart';



class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => DevicePreview(
        enabled: true,
        builder: (context) => SafeArea(
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRoute.router,
            theme: getLightTheme,
          ),
        ),
      ),
    );
  }



}

