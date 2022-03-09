import 'package:ayaproject/models/user/user_model.dart';

class Users {
  List<UserModel>? users;

  Users({
    required this.users,
  });
  factory Users.fromJson(jsondata) {
    return Users(
      users: jsondata['message'],
    );
  }
}
