import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fullstack_dev_test_app/data/repository/countries_repository.dart';
import 'package:get/instance_manager.dart';

import 'cities_repository.dart';

abstract class RepositoryInjector {

  static void inject() {
    Get.put(CountriesRepository(FirebaseFirestore.instance));
    Get.put(CitiesRepository(FirebaseFirestore.instance));
  }

}