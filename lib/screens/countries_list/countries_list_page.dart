import 'package:flutter/material.dart';
import 'package:fullstack_dev_test_app/screens/countries_list/countries_list_controller.dart';
import 'package:get/get.dart';

class CountriesListPage extends GetView<CountriesListController> {
  const CountriesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: Obx(() {
        return controller.loading.value
        ? const Center(child: CircularProgressIndicator())
        : ListView(
          children: controller.countries
              .map((country) => ListTile(
                    title: Text(country.name),
                    onTap: () => controller.goToCities(country),
                  ))
              .toList(),
        );
      }),
    );
  }
}
