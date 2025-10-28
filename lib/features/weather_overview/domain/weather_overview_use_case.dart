import 'package:equatable/equatable.dart';
import 'package:whether_app/features/weather_overview/domain/weather_overview_repository.dart';

import '../../../core/utils/use_case.dart';
import 'entity/weather_overview_entity.dart';

class WeatherOverviewUseCase
    extends UseCaseWithParams<WeatherOverviewEntity, WeatherOverviewParams> {
  final WeatherOverviewRepository weatherOverviewRepository;

  WeatherOverviewUseCase(this.weatherOverviewRepository);
  @override
  Future<WeatherOverviewEntity> call(params) async =>
      await weatherOverviewRepository.weatherOverView(
        params.lat,
        params.lon,
        params.units,
        params.appId,
      );
}

class WeatherOverviewParams extends Equatable {
  final double lat;
  final double lon;
  final String units;
  final String appId;

  const WeatherOverviewParams({
    required this.lat,
    required this.lon,
    required this.units,
    required this.appId,
  });

  @override
  List<Object?> get props => [lat, lon, units, appId];
}
