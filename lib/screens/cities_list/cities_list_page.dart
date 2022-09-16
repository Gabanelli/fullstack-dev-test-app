import 'package:flutter/material.dart';
import 'package:fullstack_dev_test_app/screens/cities_list/cities_list_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CitiesListPage extends GetView<CitiesListController> {
  const CitiesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.country),
      ),
      body: Obx(() {
        return controller.loading.value
        ? const Center(child: CircularProgressIndicator())
        : ListView(
          children: controller.citiesBySubcountry.entries
              .map((cityEntry) => Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.blue.withOpacity(.2),
                        child: Text(cityEntry.key),
                      ),
                      ...cityEntry.value.map(
                        (city) => ListTile(
                          title: Text(city.name),
                        ),
                      ),
                    ],
                  ))
              .toList(),
        );
      }),
    );
  }
}
