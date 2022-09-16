import 'package:fullstack_dev_test_app/data/model/city_model.dart';
import 'package:fullstack_dev_test_app/data/repository/base_repository.dart';

class CitiesRepository extends BaseRepository {
  const CitiesRepository(super.db);

  Future<List<CityModel>> getCitiesByCountry(String country) async {
    final query = await db.collection('cities').where('country', isEqualTo: country).get();
    return query.docs.map((doc) => CityModel.fromJson(doc.data())).toList();
  }
}
