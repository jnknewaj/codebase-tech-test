import 'package:codebasetechtest/domain/users/i_user_repository.dart';
import 'package:codebasetechtest/domain/users/user.dart';
import 'package:codebasetechtest/domain/users/user_failures.dart';
import 'package:codebasetechtest/infrastructure/core/exceptions.dart';
import 'package:codebasetechtest/infrastructure/user/user_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserService _userService;

  UserRepository(this._userService);

  @override
  Future<User?> getUser(String id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailures, List<User>>> getAllUsers({
    required int page,
  }) async {
    try {
      final users = await _userService.getAllUsers(page: page);
      return right(users);
    } on NetworkException {
      return left(const UserFailures.networkFailure());
    } on TimeoutException {
      return left(const UserFailures.timeOutFailure());
    } on ServerException catch (e) {
      return left(UserFailures.serverFailure(msg: e.message));
    } on ParsingException {
      return left(const UserFailures.parsingFailure());
    } on UnknownException catch (e) {
      return left(UserFailures.unknownFailure(message: e.message));
    }
  }
}
