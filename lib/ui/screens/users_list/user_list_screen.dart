import 'package:flutter/material.dart';
import 'package:mvvm_repo_pattern/ui/screens/users_list/user_list_viewmodel.dart';
import 'package:mvvm_repo_pattern/ui/widgets/user_card.dart';
import 'package:provider/provider.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: context
                .watch<UserListProvider>()
                .users
                .map((e) => UserCard(user: e))
                .toList()));
  }
}
