class CityModel {
  final String country;
  final String geonameId;
  final String name;
  final String subcountry;

  const CityModel(this.country, this.geonameId, this.name, this.subcountry);

  CityModel.fromJson(Map<String, dynamic> json)
      : country = json['country'],
        geonameId = json['geonameid'],
        name = json['name'],
        subcountry = json['subcountry'];
}
