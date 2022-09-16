import 'package:fullstack_dev_test_app/data/model/country_model.dart';
import 'package:fullstack_dev_test_app/data/repository/countries_repository.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class CountriesListController extends GetxController {
  final CountriesRepository _countriesRepository;

  CountriesListController(this._countriesRepository);

  final countries = RxList<CountryModel>();
  final loading = true.obs;

  void _getCountries() async {
    countries.value = await _countriesRepository.getCountries();
    loading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    _getCountries();
  }

  void goToCities(CountryModel country) {
    Get.toNamed(
      Routes.citiesList,
      arguments: { 'country': country.name },
    );
  }
}
