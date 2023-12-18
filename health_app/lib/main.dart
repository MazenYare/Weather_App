import 'package:flutter/material.dart';
import 'package:health_app/src/Contreller/HomeScreen_main.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const HeathcheckApp());
}

class HeathcheckApp extends StatelessWidget {
  const HeathcheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(
              name: '/',
              page: () => const Homescreen(),
            )
          ],
        );
      },
    );
  }
}
