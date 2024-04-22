import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data; // success
  final DioException? message; // errorMessage

  const DataState({
    this.data,
    this.message,
  });
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({
    super.message,
  });
}
