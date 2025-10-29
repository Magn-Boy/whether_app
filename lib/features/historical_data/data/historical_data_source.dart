import 'package:dio/dio.dart';
import 'package:whether_app/core/error/exception.dart';

import '../../../core/constants/endpoints.dart';
import '../domain/entity/historical_data_entity.dart';
import 'model/historical_data_model.dart';

abstract class HistoricalDataSource {
  Future<HistoricalDataEntity> historicalData(
    double lat,
    double lon,
    String units,
    String appId,
  );
}

class HistoricalDataImplementation implements HistoricalDataSource {
  const HistoricalDataImplementation(this._dio);

  final Dio _dio;

  @override
  Future<HistoricalDataEntity> historicalData(
    double lat,
    double lon,
    String units,
    String appId,
  ) async {
    try {
      final response = await _dio.get(
        Endpoints.historicalDate,
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

      final historicalData = HistoricalDataModel.fromJson(response.data);
      return historicalData;
    } on DioException catch (e) {
      throw APIException(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
