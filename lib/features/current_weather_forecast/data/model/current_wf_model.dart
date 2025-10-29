import 'dart:convert';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/current_wf_entity.dart';
import 'current_model.dart';
import 'daily_model.dart';
import 'hourly_model.dart';

class CurrentWfModel extends CurrentWfEntity {
  CurrentWfModel({
    required super.lat,
    required super.lon,
    required super.timezone,
    required super.timezoneOffset,
    required super.current,
    required super.hourly,
    required super.daily,
  });

  factory CurrentWfModel.fromJson(String source) =>
      CurrentWfModel.fromMap(jsonDecode(source) as DataMap);

  factory CurrentWfModel.fromMap(DataMap map) => CurrentWfModel(
    lat: map['lat'],
    lon: map['lon'],
    timezone: map['timezone'],
    timezoneOffset: map['timezoneOffset'],
    current: CurrentModel.fromMap(map['current'] as DataMap),
    hourly: (map['hourly'] as List)
        .map((e) => HourlyModel.fromMap(e as DataMap))
        .toList(),
    daily: (map['daily'] as List)
        .map((e) => DailyModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'lat': lat,
    'lon': lon,
    'timezone': timezone,
    'timezoneOffset': timezoneOffset,
    'current': (current as CurrentModel).toMap(),
    'hourly': hourly.map((h) => (h as HourlyModel).toMap()).toList(),
    'daily': daily.map((d) => (d as DailyModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
