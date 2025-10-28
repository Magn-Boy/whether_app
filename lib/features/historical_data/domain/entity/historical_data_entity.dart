import 'data_entity.dart';

class HistoricalDataEntity {
  final double lat;
  final double lon;
  final String timezone;
  final List<DataEntity> data;

  const HistoricalDataEntity({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.data,
  });
}
