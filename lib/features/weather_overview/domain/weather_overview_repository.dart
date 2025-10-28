import 'package:whether_app/features/weather_overview/domain/entity/weather_overview_entity.dart';

abstract class WeatherOverviewRepository {
  Future<WeatherOverviewEntity> weatherOverView(
    double lat,
    double lon,
    String units,
    String appId,
  );
}
