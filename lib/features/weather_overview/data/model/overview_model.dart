import 'dart:convert';

import 'package:whether_app/features/weather_overview/data/model/day_model.dart';
import 'package:whether_app/features/weather_overview/domain/entity/overview_entity.dart';

import '../../../../core/utils/type_defs.dart';

class OverviewModel extends OverviewEntity {
  OverviewModel({required super.today, required super.tomorrow});

  factory OverviewModel.fromJson(String source) =>
      OverviewModel.fromMap(jsonDecode(source) as DataMap);

  factory OverviewModel.fromMap(DataMap map) => OverviewModel(
    today: DayModel.fromMap(map['today'] as DataMap),
    tomorrow: DayModel.fromMap(map['tomorrow'] as DataMap),
  );

  DataMap toMap() => {
    'today': (today as DayModel).toMap(),
    'tommorow': (tomorrow as DayModel).toMap(),
  };

  String toJson() => jsonEncode(toMap());
}
