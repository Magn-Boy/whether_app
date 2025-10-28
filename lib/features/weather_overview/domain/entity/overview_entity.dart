import 'package:whether_app/features/weather_overview/domain/entity/day_entity.dart';

class OverviewEntity {
  final DayEntity today;
  final DayEntity tomorrow;

  OverviewEntity({required this.today, required this.tomorrow});
}
