import 'dart:convert';

import 'package:whether_app/features/current_whether_forecast/data/model/whether_model.dart';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/hourly_entity.dart';

class HourlyModel extends HourlyEntity {
  HourlyModel({required super.dt, required super.temp, required super.weather});

  factory HourlyModel.fromJson(String source) =>
      HourlyModel.fromMap(jsonDecode(source) as DataMap);

  factory HourlyModel.fromMap(DataMap map) => HourlyModel(
    dt: map['dt'],
    temp: map['temp'],
    weather: (map['weather'] as List)
        .map((e) => WeatherModel.fromMap(e as DataMap))
        .toList(),
  );

  DataMap toMap() => {
    'dt': dt,
    'temp': temp,
    'whether': weather.map((w) => (w as WeatherModel).toMap()).toList(),
  };

  String toJson() => jsonEncode(toMap());
}
