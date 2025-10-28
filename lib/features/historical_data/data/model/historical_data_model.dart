import 'dart:convert';

import 'package:whether_app/features/historical_data/data/model/data_model.dart';
import 'package:whether_app/features/historical_data/domain/entity/historical_data_entity.dart';

import '../../../../core/utils/type_defs.dart';

class HistoricalDataModel extends HistoricalDataEntity {
  HistoricalDataModel({
    required super.lat,
    required super.lon,
    required super.timezone,
    required super.data,
  });

  factory HistoricalDataModel.fromJson(String source) =>
      HistoricalDataModel.fromMap(jsonDecode(source) as DataMap);

  factory HistoricalDataModel.fromMap(DataMap map) => HistoricalDataModel(
    lat: map['lat'],
    lon: map['lon'],
    timezone: map['timezone'],
    data: (map['data'] as List)
        .map((e) => DataModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'lat': lat,
    'lon': lon,
    'timezone': timezone,
    'data': data.map((d) => (d as DataModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
