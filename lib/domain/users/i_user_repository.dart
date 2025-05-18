import 'package:codebasetechtest/domain/users/user.dart';
import 'package:codebasetechtest/domain/users/user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<User?> getUser(String id);
  Future<Either<UserFailures, List<User>>> getAllUsers({required int page});
}
