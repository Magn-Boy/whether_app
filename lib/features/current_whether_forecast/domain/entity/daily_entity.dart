import 'package:whether_app/features/current_whether_forecast/domain/entity/temp_entity.dart';
import 'package:whether_app/features/current_whether_forecast/domain/entity/whether_entity.dart';

class DailyEntity {
  final int dt;
  final TempEntity temp;
  final List<WeatherEntity> weather;

  const DailyEntity({
    required this.dt,
    required this.temp,
    required this.weather,
  });
}
