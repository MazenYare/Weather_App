import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course/weatherapp/view/homepage.dart';
import 'package:course/weatherapp/utils/binding.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
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
              page: () => HomeScreen(),
              binding: HomeBinding(),
            )
          ],
        );
      },
    );
  }
}
