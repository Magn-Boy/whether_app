import 'package:whether_app/core/utils/base_repository.dart';
import 'package:whether_app/features/current_weather_forecast/data/current_wf_data_source.dart';
import 'package:whether_app/features/current_weather_forecast/domain/current_wf_repository.dart';
import 'package:whether_app/features/current_weather_forecast/domain/entity/current_wf_entity.dart';

class CurrentWfRepositoryImplementation extends BaseRepository
    implements CurrentWfRepository {
  final CurrentWfDataSource _currentWfDataSource;

  const CurrentWfRepositoryImplementation(this._currentWfDataSource);

  @override
  Future<CurrentWfEntity> currentWf(
    double lat,
    double lon,
    String units,
    String appId,
  ) =>
      safeApiCall(() => _currentWfDataSource.currentWf(lat, lon, units, appId));
}
