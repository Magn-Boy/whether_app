import 'package:whether_app/features/historical_data/domain/entity/historical_data_entity.dart';

abstract class HistoricalDataRepository {
  Future<HistoricalDataEntity> historicalData(
    double lat,
    double lon,
    String units,
    String appId,
  );
}
