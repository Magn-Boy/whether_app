import 'package:whether_app/features/weather_overview/domain/entity/overview_entity.dart';

class WeatherOverviewEntity {
  final double lat;
  final double lon;
  final String timezone;
  final OverviewEntity overviewEntity;

  WeatherOverviewEntity({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.overviewEntity,
  });
}
