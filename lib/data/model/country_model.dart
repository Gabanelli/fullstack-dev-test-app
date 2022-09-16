class CountryModel {
  final String name;

  const CountryModel(this.name);

  CountryModel.fromJson(Map<String, dynamic> json) : name = json['name'];
}
