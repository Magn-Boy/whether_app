import 'entity/current_wf_entity.dart';

abstract class CurrentWfRepository {
  Future<CurrentWfEntity> currentWf(
    double lat,
    double lon,
    String units,
    String appId,
  );
}
