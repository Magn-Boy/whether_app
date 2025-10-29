import '../error/exception.dart';
import '../error/failure.dart';

typedef DataFetcher<T> = Future<T> Function();

abstract class BaseRepository {
  const BaseRepository();

  Future<T> safeApiCall<T>(DataFetcher<T> fetcher) async {
    try {
      final result = await fetcher();
      return result;
    } on APIException catch (e) {
      throw APIFailure.fromException(e);
    }
  }
}
