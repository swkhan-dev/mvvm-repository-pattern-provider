import 'package:mvvm_repo_pattern/domain/entities/user.dart';
import 'package:mvvm_repo_pattern/domain/repositories/user_repo.dart';
import 'package:mvvm_repo_pattern/model/user_json.dart';

class UserTestRepo extends UserRepository {
  @override
  Future<List<User>> getUsers() async {
    return [
      UserJson(
              id: 1,
              name: "shah",
              username: "swkhan",
              email: "swkhan@email.com",
              phone: "2132312323",
              website: "www.google.com")
          .toDomain(),
      UserJson(
              id: 1,
              name: "shah",
              username: "swkhan",
              email: "swkhan@email.com",
              phone: "2132312323",
              website: "www.google.com")
          .toDomain()
    ];
  }
}
