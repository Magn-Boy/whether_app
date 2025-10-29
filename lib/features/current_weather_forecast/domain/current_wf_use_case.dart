import 'package:equatable/equatable.dart';

import '../../../core/utils/use_case.dart';
import 'current_wf_repository.dart';
import 'entity/current_wf_entity.dart';

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
