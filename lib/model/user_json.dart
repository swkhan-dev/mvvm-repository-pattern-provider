import 'dart:convert';

import 'package:mvvm_repo_pattern/domain/entities/user.dart';

class UserJson {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  UserJson({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'website': website,
    };
  }

  factory UserJson.fromMap(Map<String, dynamic> map) {
    return UserJson(
      id: map['id'] as int,
      name: map['name'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      website: map['website'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserJson.fromJson(String source) =>
      UserJson.fromMap(json.decode(source) as Map<String, dynamic>);

  User toDomain() => User(
      id: id,
      name: name,
      username: username,
      email: email,
      phone: phone,
      website: website);
}
