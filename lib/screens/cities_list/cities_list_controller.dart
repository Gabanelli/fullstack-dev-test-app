import 'package:fullstack_dev_test_app/utils/list_extension.dart';
import 'package:get/get.dart';

import '../../data/model/city_model.dart';
import '../../data/repository/cities_repository.dart';

class CitiesListController extends GetxController {

  final CitiesRepository _citiesRepository;

  CitiesListController(this._citiesRepository);

  final country = Get.arguments['country'];

  final citiesBySubcountry = RxMap<String, List<CityModel>>();
  final loading = true.obs;

  void getCities() async {
    final cities = await _citiesRepository.getCitiesByCountry(country);
    citiesBySubcountry.value = cities.groupBy((city) => city.subcountry);
    loading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    getCities();
  }

}