import 'dart:convert';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/wind_entity.dart';

class WindModel extends WindEntity {
  WindModel({required super.maxSpeed, required super.meanSpeed});

  factory WindModel.fromJson(String source) =>
      WindModel.fromMap(jsonDecode(source) as DataMap);

  factory WindModel.fromMap(DataMap map) =>
      WindModel(maxSpeed: map['maxSpeed'], meanSpeed: map['meanSpeed']);

  DataMap toMap() => {'maxSpeed': maxSpeed, 'meanSpeed': meanSpeed};

  String toJson() => jsonEncode(toMap());
}
