import 'package:course/weatherapp/Controller/homecontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import '../constant/images.dart';

class Mycard extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${controller.currentWeatherData.name}',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'flutterfonts',
                        ),
                  ),
                  Text(
                    DateFormat().add_MMMMEEEEd().format(DateTime.now()),
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'flutterfonts',
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              endIndent: 10.0,
              indent: 10,
              color: Colors.white12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '${(controller.currentWeatherData.main!.temp - 273.15).round().toString()}\u2103',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.white, fontFamily: 'flutterfonts'),
                    ),
                  ],
                ),
              ],
            ),
            (Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 120,
                    width: 300,
                    child: LottieBuilder.asset(
                      Images.lol,
                    ))
              ],
            ))
          ],
        )
      ],
    );
  }
}
