import 'dart:convert';

import 'package:whether_app/features/weather_overview/domain/entity/day_entity.dart';

import '../../../../core/utils/type_defs.dart';

class DayModel extends DayEntity {
  DayModel({
    required super.tempMin,
    required super.tempMax,
    required super.condition,
  });

  factory DayModel.fromJson(String source) =>
      DayModel.fromMap(jsonDecode(source) as DataMap);

  factory DayModel.fromMap(DataMap map) => DayModel(
    tempMin: map['tempMin'],
    tempMax: map['tempMax'],
    condition: map['condition'],
  );

  DataMap toMap() => {
    'tempMin': tempMin,
    'tempMax': tempMax,
    'condition': condition,
  };

  String toJson() => jsonEncode(toMap());
}
