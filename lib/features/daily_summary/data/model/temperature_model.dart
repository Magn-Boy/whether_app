import 'dart:convert';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/temperature_entity.dart';

class TemperatureModel extends TemperatureEntity {
  TemperatureModel({
    required super.min,
    required super.max,
    required super.mean,
  });

  factory TemperatureModel.fromJson(String source) =>
      TemperatureModel.fromMap(jsonDecode(source) as DataMap);

  factory TemperatureModel.fromMap(DataMap map) =>
      TemperatureModel(min: map['min'], max: map['max'], mean: map['mean']);

  DataMap toMap() => {'min': min, 'max': max, 'mean': mean};

  String toJson() => jsonEncode(toMap());
}
