class Location {
  String name;
  var time;
  int temperature;
  String imageURL;
  String weather;

  Location(
      {required this.name,
      required this.imageURL,
      required this.temperature,
      required this.time,
      required this.weather});
}
