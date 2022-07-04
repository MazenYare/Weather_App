import 'dart:ui';
import 'package:course/weatherapp/constant/images.dart';
import 'package:course/weatherapp/widgets/card.dart';

import 'package:course/weatherapp/Controller/homecontrol.dart';
import 'package:course/weatherapp/widgets/chart.dart';
import 'package:course/weatherapp/widgets/list2.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../widgets/list.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GetBuilder<HomeController>(builder: (controller) {
        return ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(Images.Imahae))),
                child: Column(children: <Widget>[
                  AppBar(
                    title: SizedBox(
                      width: 180,
                      height: 35,
                      child: TextField(
                        onChanged: (value) => controller.city = value,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) => controller.updateWeather(),
                        decoration: InputDecoration(
                          suffix: const Icon(
                            Icons.search,
                            size: 10,
                            color: Colors.white,
                          ),
                          hintStyle: const TextStyle(color: Colors.white),
                          hintText: 'Search'.toUpperCase(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black54),
                        child: Mycard(),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black54),
                      child: MyList(),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: MyList2(),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black54),
                      ))
                ])),
          ],
        );
      }),
    );
  }
}
