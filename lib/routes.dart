import 'package:get/route_manager.dart';

import 'screens/cities_list/cities_list_binding.dart';
import 'screens/cities_list/cities_list_page.dart';
import 'screens/countries_list/countries_list_binding.dart';
import 'screens/countries_list/countries_list_page.dart';

abstract class Routes {
  static String get countriesList => '/COUNTRY_LIST';
  static String get citiesList => '/CITY_LIST';

  static List<GetPage> get pages => [
        GetPage(
          name: countriesList,
          page: () => const CountriesListPage(),
          binding: CountriesListBinding(),
        ),
        GetPage(
          name: citiesList,
          page: () => const CitiesListPage(),
          binding: CitiesListBinding(),
        ),
      ];
}
