import 'package:flutter/material.dart';
import 'package:mvvm_repo_pattern/domain/entities/user.dart';
import 'package:mvvm_repo_pattern/domain/repositories/user_repo.dart';

class UserListProvider extends ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  UserListProvider({required this.userRepo});
  final UserRepository userRepo;

  Future<void> getUsers() async {
    _users = await userRepo.getUsers();
    notifyListeners();
  }
}
