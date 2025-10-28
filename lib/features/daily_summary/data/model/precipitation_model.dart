import 'dart:convert';

import '../../../../core/utils/type_defs.dart';
import '../../domain/entity/precipitation_entity.dart';

class PrecipitationModel extends PrecipitationEntity {
  PrecipitationModel({required super.total, required super.type});

  factory PrecipitationModel.fromJson(String source) =>
      PrecipitationModel.fromMap(jsonDecode(source) as DataMap);

  factory PrecipitationModel.fromMap(DataMap map) =>
      PrecipitationModel(total: map['total'], type: map['type']);

  DataMap toMap() => {'total': total, 'type': type};

  String toJson() => jsonEncode(toMap());
}
