import 'dart:convert';

import 'package:whether_app/features/current_whether_forecast/data/model/whether_model.dart';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/current_entity.dart';

class CurrentModel extends CurrentEntity {
  CurrentModel({
    required super.dt,
    required super.sunrise,
    required super.sunset,
    required super.temp,
    required super.feelsLike,
    required super.pressure,
    required super.humidity,
    required super.windSpeed,
    required super.weather,
  });

  factory CurrentModel.fromJson(String source) =>
      CurrentModel.fromMap(jsonDecode(source) as DataMap);

  factory CurrentModel.fromMap(DataMap map) => CurrentModel(
    dt: map['dt'],
    sunrise: map['sunrise'],
    sunset: map['sunset'],
    temp: map['temp'],
    feelsLike: map['feelsLike'],
    pressure: map['pressure'],
    humidity: map['humidity'],
    windSpeed: map['windSpeed'],
    weather: (map['weather'] as List)
        .map((e) => WeatherModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'dt': dt,
    'sunrise': sunrise,
    'sunset': sunset,
    'temp': temp,
    'feelsLike': feelsLike,
    'pressure': pressure,
    'humidity': humidity,
    'windSpeed': windSpeed,
    'whether': weather.map((w) => (w as WeatherModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
