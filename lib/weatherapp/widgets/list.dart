import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:course/weatherapp/Controller/homecontrol.dart';

import 'package:course/weatherapp/constant/images.dart';
import 'package:course/weatherapp/model/currentweatherdata.dart';

class MyList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const VerticalDivider(
        color: Colors.white12,
        endIndent: 10,
        indent: 10,
        thickness: 1,
        width: 5,
      ),
      itemCount: controller.dataList.length,
      itemBuilder: (context, index) {
        CurrentWeatherData? data;
        (controller.dataList.isNotEmpty)
            ? data = controller.dataList[index]
            : data = null;
        return SizedBox(
          width: 100,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  (data != null) ? '${data.name}' : '',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'flutterfonts',
                      ),
                ),
                Text(
                  (data != null)
                      ? '${(data.main!.temp - 273.15).round().toString()}\u2103'
                      : '',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'flutterfonts',
                      ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: LottieBuilder.asset(Images.cloudyAni),
                ),
                Text(
                  (data != null) ? '${data.weather![0].description}' : '',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white,
                        fontFamily: 'flutterfonts',
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
