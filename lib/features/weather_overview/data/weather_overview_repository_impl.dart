import 'package:whether_app/core/utils/base_repository.dart';
import 'package:whether_app/features/weather_overview/data/weather_overview_data_source.dart';
import 'package:whether_app/features/weather_overview/domain/entity/weather_overview_entity.dart';
import 'package:whether_app/features/weather_overview/domain/weather_overview_repository.dart';

class WeatherOverviewRepositoryImplementation extends BaseRepository
    implements WeatherOverviewRepository {
  final WeatherOverviewDataSource _weatherOverviewDataSource;

  const WeatherOverviewRepositoryImplementation(
    this._weatherOverviewDataSource,
  );
  @override
  Future<WeatherOverviewEntity> weatherOverView(
    double lat,
    double lon,
    String units,
    String appId,
  ) => safeApiCall(
    () => _weatherOverviewDataSource.historicalData(lat, lon, units, appId),
  );
}
