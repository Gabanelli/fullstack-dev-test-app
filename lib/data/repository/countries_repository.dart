import 'package:fullstack_dev_test_app/data/model/country_model.dart';
import 'package:fullstack_dev_test_app/data/repository/base_repository.dart';

class CountriesRepository extends BaseRepository {
  const CountriesRepository(super.db);

  Future<List<CountryModel>> getCountries() async {
    final query = await db.collection('countries').orderBy('name').get();
    return query.docs.map((doc) => CountryModel.fromJson(doc.data())).toList();
  }
}
