import 'dart:convert';

import 'package:whether_app/features/current_whether_forecast/domain/entity/whether_entity.dart';

import '../../../../core/utils/type_defs.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel({
    required super.id,
    required super.main,
    required super.description,
    required super.icon,
  });

  factory WeatherModel.fromJson(String source) =>
      WeatherModel.fromMap(jsonDecode(source) as DataMap);

  WeatherModel.fromMap(DataMap map)
    : this(
        id: map['id'],
        main: map['main'],
        description: map['description'],
        icon: map['icon'],
      );

  DataMap toMap() => {
    'id': id,
    'main': main,
    'description': description,
    'icon': icon,
  };

  String toJson() => jsonEncode(toMap());
}
