import 'current_entity.dart';
import 'daily_entity.dart';
import 'hourly_entity.dart';

class CurrentWfEntity {
  final double lat;
  final double lon;
  final String timezone;
  final int timezoneOffset;
  final CurrentEntity current;
  final List<HourlyEntity> hourly;
  final List<DailyEntity> daily;

  const CurrentWfEntity({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.current,
    required this.hourly,
    required this.daily,
  });
}
