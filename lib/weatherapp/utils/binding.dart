import 'package:get/instance_manager.dart';

import 'package:course/weatherapp/Controller/homecontrol.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'cairo'));
  }
}
