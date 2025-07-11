import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:suitmedia_test/data/entity/user.dart';

class GetUserDatasource {
  Future<Either<String, List<User>>> getUser(int page) async {
    final String url = "https://reqres.in/api/users?page=$page&per_page=10";
    final dio = Dio();
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'x-api-key': 'reqres-free-v1',
          },
        ),
      );
      if (response.statusCode == 200) {
        final List<User> users = userFromJson(
          jsonEncode(response.data['data']),
        );
        return Right(users);
      } else {
        return Left('No users found');
      }
    } catch (e) {
      return Left('No users found');
    }
  }
}
