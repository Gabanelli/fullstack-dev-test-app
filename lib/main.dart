import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fullstack_dev_test_app/data/repository/repository_injector.dart';
import 'package:fullstack_dev_test_app/routes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  _injectDependencies();
  runApp(GetMaterialApp(
    title: 'Country Database',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    getPages: Routes.pages,
    initialRoute: Routes.countriesList,
  ));
}

void _injectDependencies() {
  RepositoryInjector.inject();
}