import 'package:equatable/equatable.dart';
import 'package:whether_app/features/historical_data/domain/entity/historical_data_entity.dart';
import 'package:whether_app/features/historical_data/domain/historical_data_repository.dart';

import '../../../core/utils/use_case.dart';

class HistoricalDataUseCase
    extends UseCaseWithParams<HistoricalDataEntity, HistoricalDataParams> {
  final HistoricalDataRepository historicalDataRepository;

  HistoricalDataUseCase(this.historicalDataRepository);
  @override
  Future<HistoricalDataEntity> call(params) async =>
      await historicalDataRepository.historicalData(
        params.lat,
        params.lon,
        params.units,
        params.appId,
      );
}

class HistoricalDataParams extends Equatable {
  final double lat;
  final double lon;
  final String units;
  final String appId;

  const HistoricalDataParams({
    required this.lat,
    required this.lon,
    required this.units,
    required this.appId,
  });

  @override
  List<Object?> get props => [lat, lon, units, appId];
}
