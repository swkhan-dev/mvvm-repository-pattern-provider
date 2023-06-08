import 'dart:convert';

import 'package:mvvm_repo_pattern/domain/entities/user.dart';
import 'package:mvvm_repo_pattern/domain/repositories/user_repo.dart';
import 'package:mvvm_repo_pattern/model/user_json.dart';
import 'package:http/http.dart' as http;

class UserRestAPIRepository extends UserRepository {
  @override
  Future<List<User>> getUsers() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(url);

    var usersList = jsonDecode(response.body) as List;

    return usersList
        .map((userJson) => UserJson.fromMap(userJson).toDomain())
        .toList();
  }
}
