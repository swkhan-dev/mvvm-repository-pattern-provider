import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_repo_pattern/domain/repositories/user_api_repo.dart';
import 'package:mvvm_repo_pattern/domain/repositories/user_test_repo.dart';
import 'package:mvvm_repo_pattern/ui/screens/users_list/user_list_screen.dart';
import 'package:mvvm_repo_pattern/ui/screens/users_list/user_list_viewmodel.dart';
import 'package:provider/provider.dart';

GetIt locator = GetIt.instance;

setupLocator() {
  locator.registerLazySingleton<UserRestAPIRepository>(
      () => UserRestAPIRepository());
  locator.registerLazySingleton<UserTestRepo>(() => UserTestRepo());
}

void main() {
  setupLocator();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (_) =>
            UserListProvider(userRepo: locator<UserTestRepo>())..getUsers())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UsersListScreen(),
    );
  }
}
