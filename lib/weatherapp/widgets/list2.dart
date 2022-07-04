import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:course/weatherapp/Controller/homecontrol.dart';
import 'package:course/weatherapp/constant/images.dart';

class MyList2 extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 60,
                    width: 60,
                    child: LottieBuilder.asset(Images.lololo))
              ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'min: ${(controller.currentWeatherData.main!.tempMin! - 273.15).round().toString()}\u2103 \n max: ${(controller.currentWeatherData.main!.tempMax! - 273.15).round().toString()}\u2103',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'flutterfonts',
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
        const VerticalDivider(
          color: Colors.white12,
          endIndent: 10,
          indent: 10,
          thickness: 1,
          width: 5,
        ),
        Expanded(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    height: 60,
                    width: 60,
                    child: LottieBuilder.asset(Images.lolo))
              ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'wind \n ${controller.currentWeatherData.wind!.speed} m/s',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'flutterfonts',
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
