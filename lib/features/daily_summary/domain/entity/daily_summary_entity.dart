import 'package:whether_app/features/daily_summary/domain/entity/precipitation_entity.dart';
import 'package:whether_app/features/daily_summary/domain/entity/temperature_entity.dart';
import 'package:whether_app/features/daily_summary/domain/entity/wind_entity.dart';

import '../../../current_weather_forecast/domain/entity/whether_entity.dart';

class DailySummaryEntity {
  final double lat;
  final double lon;
  final DateTime date;
  final TemperatureEntity temperature;
  final PrecipitationEntity precipitation;
  final WindEntity wind;
  final List<WeatherEntity> weather;

  DailySummaryEntity({
    required this.lat,
    required this.lon,
    required this.date,
    required this.temperature,
    required this.precipitation,
    required this.wind,
    required this.weather,
  });
}
