import 'dart:convert';

import 'package:whether_app/features/current_whether_forecast/data/model/temp_model.dart';
import 'package:whether_app/features/current_whether_forecast/data/model/whether_model.dart';
import 'package:whether_app/features/current_whether_forecast/domain/entity/daily_entity.dart';

import '../../../../core/utils/type_defs.dart';

class DailyModel extends DailyEntity {
  DailyModel({required super.dt, required super.temp, required super.weather});

  factory DailyModel.fromJson(String source) =>
      DailyModel.fromMap(jsonDecode(source) as DataMap);

  factory DailyModel.fromMap(DataMap map) => DailyModel(
    dt: map['dt'],
    temp: TempModel.fromMap(map['temp'] as DataMap),
    weather: (map['whether'] as List)
        .map((e) => WeatherModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'dt': dt,
    'temp': (temp as TempModel).toMap(),
    'weather': weather.map((w) => (w as WeatherModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
