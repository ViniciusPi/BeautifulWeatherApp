import 'locations.dart';

Location newYork = Location(
    imageURL: 'https://i.ibb.co/df35Y8Q/2.png',
    name: 'Ney York',
    temperature: 12,
    time: '12:00 am',
    weather: 'Rainy');

Location sanFrancisco = Location(
    imageURL: 'https://i.ibb.co/7WyTr6q/3.png',
    name: "San Francisco",
    temperature: 3,
    time:
        DateTime.now().hour.toString() + ':' + DateTime.now().minute.toString(),
    weather: 'Cloudy');

List locations = [newYork, sanFrancisco];
