import 'dart:convert';

import 'package:whether_app/features/daily_summary/data/model/precipitation_model.dart';
import 'package:whether_app/features/daily_summary/data/model/temperature_model.dart';
import 'package:whether_app/features/daily_summary/data/model/wind_model.dart';

import '../../../../core/utils/type_defs.dart';
import '../../../current_weather_forecast/data/model/whether_model.dart';
import '../../domain/entity/daily_summary_entity.dart';

class DailySummaryModel extends DailySummaryEntity {
  DailySummaryModel({
    required super.lat,
    required super.lon,
    required super.date,
    required super.temperature,
    required super.precipitation,
    required super.wind,
    required super.weather,
  });

  factory DailySummaryModel.fromJson(String source) =>
      DailySummaryModel.fromMap(jsonDecode(source) as DataMap);

  factory DailySummaryModel.fromMap(DataMap map) => DailySummaryModel(
    lat: map['lat'],
    lon: map['lon'],
    date: map['date'],
    temperature: TemperatureModel.fromMap(map['temperature'] as DataMap),
    precipitation: PrecipitationModel.fromMap(map['precipitation'] as DataMap),
    wind: WindModel.fromMap(map['wind'] as DataMap),
    weather: (map['weather'] as List)
        .map((e) => WeatherModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'lat': lat,
    'lon': lon,
    'date': date,
    'temperature': (temperature as TemperatureModel).toMap(),
    'precipitation': (precipitation as PrecipitationModel).toMap(),
    'wind': (wind as WindModel).toMap(),
    'weather': weather.map((w) => (w as WeatherModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
