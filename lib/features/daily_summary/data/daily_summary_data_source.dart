import 'package:dio/dio.dart';
import 'package:whether_app/core/error/exception.dart';

import '../../../core/constants/endpoints.dart';
import '../domain/entity/daily_summary_entity.dart';
import 'model/daily_summary_model.dart';

abstract class DailySummaryDataSource {
  Future<DailySummaryEntity> dailySummer(
    double lat,
    double lon,
    String units,
    String appId,
  );
}

class DailySummaryImplementation implements DailySummaryDataSource {
  const DailySummaryImplementation(this._dio);

  final Dio _dio;

  @override
  Future<DailySummaryEntity> dailySummer(
    double lat,
    double lon,
    String units,
    String appId,
  ) async {
    try {
      final response = await _dio.get(
        Endpoints.daySummary,
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

      final dailySummer = DailySummaryModel.fromJson(response.data);
      return dailySummer;
    } on DioException catch (e) {
      throw APIException(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
