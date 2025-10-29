import 'package:whether_app/core/utils/base_repository.dart';
import 'package:whether_app/features/daily_summary/data/daily_summary_data_source.dart';
import 'package:whether_app/features/daily_summary/domain/daily_summary_repository.dart';
import 'package:whether_app/features/daily_summary/domain/entity/daily_summary_entity.dart';

class DailySummaryRepositoryImplementation extends BaseRepository
    implements DailySummaryRepository {
  final DailySummaryDataSource _dailySummaryDataSource;

  const DailySummaryRepositoryImplementation(this._dailySummaryDataSource);
  @override
  Future<DailySummaryEntity> dailySummary(
    double lat,
    double lon,
    String units,
    String appId,
  ) => safeApiCall(
    () => _dailySummaryDataSource.dailySummer(lat, lon, units, appId),
  );
}
