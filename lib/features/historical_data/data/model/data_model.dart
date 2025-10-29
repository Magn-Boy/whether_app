import 'dart:convert';

import 'package:whether_app/features/historical_data/domain/entity/data_entity.dart';

import '../../../../core/utils/type_defs.dart';
import '../../../current_weather_forecast/data/model/whether_model.dart';

class DataModel extends DataEntity {
  DataModel({
    required super.dt,
    required super.temp,
    required super.feelsLike,
    required super.pressure,
    required super.humidity,
    required super.windSpeed,
    required super.weather,
  });

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(jsonDecode(source) as DataMap);

  factory DataModel.fromMap(DataMap map) => DataModel(
    dt: map['dt'],
    temp: map['temp'],
    feelsLike: map['feelsLike'],
    pressure: map['pressure'],
    humidity: map['humidity'],
    windSpeed: map['windSpeed'],
    weather: (map['whether'] as List)
        .map((e) => WeatherModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'dt': dt,
    'temp': temp,
    'feelsLike': feelsLike,
    'pressure': pressure,
    'humidity': humidity,
    'windSpeed': windSpeed,
    'whether': weather.map((w) => (w as WeatherModel).toMap()).toList(),
  };
}
