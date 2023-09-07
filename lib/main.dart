import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shreeji_delivery_app/routes/app_page.dart';
import 'package:shreeji_delivery_app/routes/app_route.dart';
import 'package:shreeji_delivery_app/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: ((context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              initialRoute: AppRoutes.loginScreen,
              getPages: AppPages.getPages,
              theme: ThemeData(
                primaryColor: primaryColor,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                // useMaterial3: true,
              ),
              // home: const AssignedOrderScreen(),
            )));
  }
}
