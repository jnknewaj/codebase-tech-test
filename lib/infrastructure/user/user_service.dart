import 'dart:convert';
import 'dart:io';

import 'package:codebasetechtest/domain/users/user.dart';
import 'package:codebasetechtest/infrastructure/core/exceptions.dart';
import 'package:codebasetechtest/infrastructure/user/user_dto.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserService {
  final http.Client _httpClient;

  UserService(this._httpClient);

  Future<List<User>> getAllUsers({required int page}) async {
    final url = "https://reqres.in/api/users?per_page=5&page=$page";
    const headers = {
      'x-api-key': 'reqres-free-v1',
      'Content-Type': 'application/json',
    };

    try {
      final response = await _httpClient
          .get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) {
        throw ServerException('Status code: ${response.statusCode}');
      }

      final jsonData = json.decode(response.body);

      if (jsonData['data'] is! List) {
        throw ParsingException();
      }

      final List usersJson = jsonData['data'];
      final list =
          usersJson.map((json) => UserDto.fromJson(json).toDomain()).toList();

      return list;
    } on SocketException {
      throw NetworkException();
    } on TimeoutException {
      throw TimeoutException();
    } on FormatException catch (_) {
      throw ParsingException();
    } on TypeError catch (_) {
      throw ParsingException();
    } catch (e) {
      throw UnknownException(e.toString());
    }
  }
}
