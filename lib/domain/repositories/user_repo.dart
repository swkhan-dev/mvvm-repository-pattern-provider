import 'package:mvvm_repo_pattern/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
}
