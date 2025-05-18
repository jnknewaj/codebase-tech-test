import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
class UserFailures with _$UserFailures {
  const factory UserFailures.networkFailure() = _NetworkFailure;
  const factory UserFailures.serverFailure({String? msg}) = _ServerFailure;
  const factory UserFailures.timeOutFailure() = _TimeOutFailure;
  const factory UserFailures.parsingFailure() = _ParsingFailure;
  const factory UserFailures.unknownFailure({String? message}) =
      _UnknownFailure;
}
