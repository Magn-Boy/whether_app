import 'package:whether_app/core/utils/base_repository.dart';
import 'package:whether_app/features/historical_data/data/historical_data_source.dart';
import 'package:whether_app/features/historical_data/domain/entity/historical_data_entity.dart';
import 'package:whether_app/features/historical_data/domain/historical_data_repository.dart';

class HistoricalDataRepositoryImplementation extends BaseRepository
    implements HistoricalDataRepository {
  final HistoricalDataSource _historicalDataSource;

  const HistoricalDataRepositoryImplementation(this._historicalDataSource);
  @override
  Future<HistoricalDataEntity> historicalData(
    double lat,
    double lon,
    String units,
    String appId,
  ) => safeApiCall(
    () => _historicalDataSource.historicalData(lat, lon, units, appId),
  );
}
