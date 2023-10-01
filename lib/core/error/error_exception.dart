import 'package:equatable/equatable.dart';

class ErrorException extends Equatable implements Exception {
  final String? message;

  const ErrorException({required this.message});

  @override
  List<Object?> get props => [message];
}

class FetchDataException extends ErrorException {
  const FetchDataException([message]) : super(message: message);
}

class BadRequestException extends ErrorException {
  const BadRequestException([message]) : super(message: message);
}

class UnauthorizedException extends ErrorException {
  const UnauthorizedException([message]) : super(message: message);
}

class NotFoundException extends ErrorException {
  const NotFoundException([message]) : super(message: message);
}

class ConflictException extends ErrorException {
  const ConflictException([message]) : super(message: message);
}

class InternalServerErrorException extends ErrorException {
  const InternalServerErrorException([message]) : super(message: message);
}

class NoInternetConnectionException extends ErrorException {
  const NoInternetConnectionException([message]) : super(message: message);
}

class CacheException extends ErrorException {
  const CacheException([message]) : super(message: message);
}
