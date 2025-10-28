import 'package:whether_app/features/daily_summary/domain/entity/daily_summary_entity.dart';

abstract class DailySummaryRepository {
  Future<DailySummaryEntity> dailySummary(
    double lat,
    double lon,
    String units,
    String appId,
  );
}
