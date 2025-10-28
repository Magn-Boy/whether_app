import 'package:equatable/equatable.dart';
import 'package:whether_app/features/current_whether_forecast/domain/current_wf_repository.dart';
import 'package:whether_app/features/current_whether_forecast/domain/entity/current_wf_entity.dart';

import '../../../core/utils/use_case.dart';

class CurrentWfUseCase
    extends UseCaseWithParams<CurrentWfEntity, CurrentWfParams> {
  final CurrentWfRepository currentWfRepository;

  CurrentWfUseCase(this.currentWfRepository);
  @override
  Future<CurrentWfEntity> call(params) async => await currentWfRepository
      .currentWf(params.lat, params.lon, params.units, params.appId);
}

class CurrentWfParams extends Equatable {
  final double lat;
  final double lon;
  final String units;
  final String appId;

  const CurrentWfParams({
    required this.lat,
    required this.lon,
    required this.units,
    required this.appId,
  });

  @override
  List<Object?> get props => [lat, lon, units, appId];
}
