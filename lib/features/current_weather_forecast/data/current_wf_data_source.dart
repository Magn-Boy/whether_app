import 'package:dio/dio.dart';
import 'package:whether_app/core/error/exception.dart';
import 'package:whether_app/features/current_weather_forecast/domain/entity/current_wf_entity.dart';

import '../../../core/constants/endpoints.dart';
import 'model/current_wf_model.dart';

abstract class CurrentWfDataSource {
  Future<CurrentWfEntity> currentWf(
    double lat,
    double lon,
    String units,
    String appId,
  );
}

class CurrentWfDataSourceImplementation implements CurrentWfDataSource {
  const CurrentWfDataSourceImplementation(this._dio);

  final Dio _dio;

  @override
  Future<CurrentWfEntity> currentWf(
    double lat,
    double lon,
    String units,
    String appId,
  ) async {
    try {
      final response = await _dio.get(
        Endpoints.currentWf,
        queryParameters: {
          'lat': lat,
          'lon': lon,
          'units': units,
          'appid': appId,
        },
      );

      if (response.statusCode != 200) {
        throw APIException(
          message: response.data,
          statusCode: response.statusCode,
        );
      }

      final currentWf = CurrentWfModel.fromJson(response.data);
      return currentWf;
    } on DioException catch (e) {
      throw APIException(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
