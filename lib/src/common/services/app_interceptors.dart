import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        throw DeadlineExceededException(requestOptions: err.requestOptions);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(requestOptions: err.requestOptions);
          case 401:
            throw UnAuthorizedException(requestOptions: err.requestOptions);
          case 404:
            throw NotFoundException(requestOptions: err.requestOptions);
          case 409:
            throw ConflictException(requestOptions: err.requestOptions);
          case 500:
            throw InternalServerErrorException(
              requestOptions: err.requestOptions,
            );
        }
        break;

      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw NoInternetConnectionException(requestOptions: err.requestOptions);
      case DioExceptionType.badCertificate:
        break;
      case DioExceptionType.connectionError:
        break;
    }
    return handler.next(err);
  }
}

class BadRequestException extends DioException {
  BadRequestException({required super.requestOptions});

  @override
  String toString() => 'Invalid quest';
}

class ConflictException extends DioException {
  ConflictException({required super.requestOptions});

  @override
  String toString() => 'Conflict occured';
}

class DeadlineExceededException extends DioException {
  DeadlineExceededException({required super.requestOptions});

  @override
  String toString() => 'The connection has timed out, please try again.';
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException({required super.requestOptions});

  @override
  String toString() => 'Serverside error occured, please try again later';
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException({required super.requestOptions});

  @override
  String toString() =>
      'No internet connection detected, please try again later.';
}

class NotFoundException extends DioException {
  NotFoundException({required super.requestOptions});

  @override
  String toString() => 'The requested information could not be found';
}

class UnAuthorizedException extends DioException {
  UnAuthorizedException({required super.requestOptions});

  @override
  String toString() => 'Access denied';
}

class ServerMessageException implements Exception {
  ServerMessageException(this.message);
  final String message;
  @override
  String toString() {
    return message;
  }
}
