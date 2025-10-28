import 'dart:convert';

import 'package:whether_app/features/weather_overview/data/model/overview_model.dart';
import 'package:whether_app/features/weather_overview/domain/entity/weather_overview_entity.dart';

import '../../../../core/utils/type_defs.dart';

class WeatherOverviewModel extends WeatherOverviewEntity {
  WeatherOverviewModel({
    required super.lat,
    required super.lon,
    required super.timezone,
    required super.overviewEntity,
  });

  factory WeatherOverviewModel.fromJson(String source) =>
      WeatherOverviewModel.fromMap(jsonDecode(source) as DataMap);

  factory WeatherOverviewModel.fromMap(DataMap map) => WeatherOverviewModel(
    lat: map['lat'],
    lon: map['lon'],
    timezone: map['timezone'],
    overviewEntity: OverviewModel.fromMap(map['overviewEntity'] as DataMap),
  );

  DataMap toMap() => {
    'lat': lat,
    'lon': lon,
    'timezone': timezone,
    'current': (overviewEntity as OverviewModel).toMap(),
  };

  String toJson() => jsonEncode(toMap());
}
