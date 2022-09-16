import 'package:get/get.dart';

import 'cities_list_controller.dart';

class CitiesListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CitiesListController(Get.find()));
  }

}