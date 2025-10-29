import 'dart:convert';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/whether_entity.dart';

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
