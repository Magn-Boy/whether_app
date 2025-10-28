import 'package:equatable/equatable.dart';

import '../../../core/utils/use_case.dart';
import 'daily_summary_repository.dart';
import 'entity/daily_summary_entity.dart' show DailySummaryEntity;

class DailySummaryUseCase
    extends UseCaseWithParams<DailySummaryEntity, DailySummaryParams> {
  final DailySummaryRepository dailySummaryRepository;

  DailySummaryUseCase(this.dailySummaryRepository);
  @override
  Future<DailySummaryEntity> call(params) async => await dailySummaryRepository
      .dailySummary(params.lat, params.lon, params.units, params.appId);
}

class DailySummaryParams extends Equatable {
  final double lat;
  final double lon;
  final String units;
  final String appId;

  const DailySummaryParams({
    required this.lat,
    required this.lon,
    required this.units,
    required this.appId,
  });

  @override
  List<Object?> get props => [lat, lon, units, appId];
}
