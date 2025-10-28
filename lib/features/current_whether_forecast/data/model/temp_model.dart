import 'dart:convert';

import 'package:whether_app/features/current_whether_forecast/domain/entity/temp_entity.dart';

import '../../../../core/utils/type_defs.dart';

class TempModel extends TempEntity {
  TempModel({required super.day, required super.min, required super.max});

  factory TempModel.fromJson(String source) =>
      TempModel.fromMap(jsonDecode(source) as DataMap);

  TempModel.fromMap(DataMap map)
    : this(day: map['day'], min: map['min'], max: map['max']);

  DataMap toMap() => {'day': day, 'min': min, 'max': max};

  String toJson() => jsonEncode(toMap());
}
