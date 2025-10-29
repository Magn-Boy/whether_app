import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whether_app/features/current_weather_forecast/data/current_wf_repository_impl.dart';

import '../../features/current_weather_forecast/data/current_wf_data_source.dart';
import '../../features/current_weather_forecast/domain/current_wf_use_case.dart';
import '../../features/current_weather_forecast/domain/entity/current_wf_entity.dart';

// Dio provider
final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(baseUrl: 'https://api.openweathermap.org'));
});

// DataSource provider
final currentWfDataSourceProvider = Provider<CurrentWfDataSource>((ref) {
  return CurrentWfDataSourceImplementation(ref.watch(dioProvider));
});

// Repository provider
final currentWfRepositoryProvider = Provider<CurrentWfRepositoryImplementation>(
  (ref) {
    return CurrentWfRepositoryImplementation(
      ref.watch(currentWfDataSourceProvider),
    );
  },
);

// UseCase provider
final getCurrentWeatherUseCaseProvider = Provider<CurrentWfUseCase>((ref) {
  return CurrentWfUseCase(ref.watch(currentWfRepositoryProvider));
});

// FutureProvider для UI
final currentWeatherProvider =
    FutureProvider.family<CurrentWfEntity, (double, double)>((
      ref,
      coords,
    ) async {
      final useCase = ref.watch(getCurrentWeatherUseCaseProvider);
      final (lat, lon) = coords;
      return useCase(
        CurrentWfParams(
          lat: lat,
          lon: lon,
          units: 'metric',
          appId: 'YOUR_API_KEY',
        ),
      );
    });
