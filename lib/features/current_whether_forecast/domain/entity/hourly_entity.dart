import 'package:whether_app/features/current_whether_forecast/domain/entity/whether_entity.dart';

class HourlyEntity {
  final int dt;
  final double temp;
  final List<WeatherEntity> weather;

  const HourlyEntity({
    required this.dt,
    required this.temp,
    required this.weather,
  });
}
