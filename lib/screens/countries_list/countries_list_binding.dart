import 'package:fullstack_dev_test_app/screens/countries_list/countries_list_controller.dart';
import 'package:get/get.dart';

class CountriesListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountriesListController(Get.find()));
  }

}