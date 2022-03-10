import 'package:ayaproject/constant.dart';
import 'package:ayaproject/models/user/user_model.dart';

import '../../api/api.dart';
import 'package:http/http.dart' as http;

class GetUserServices {
  Future<List<UserModel>> usersServices() async {
    List<dynamic> data = await Api().get(url: '$uri/users/getUser.php');

    List<UserModel> usersList = [];

    for (int i = 0; i < data.length; i++) {
      usersList.add(UserModel.fromJson(data[i]));
    }
    return usersList;
  }

  Future<UserModel> userByIdServices({required int idUser}) async {
    UserModel data = await Api().get(url: '$uri/users/getuserByID.php/$idUser');

    return data;
  }

  Future<UserModel> userByUserNAmeServices({required String userName}) async {
    UserModel data =
        await Api().get(url: '$uri/users/getuserByName.php/$userName');

    return data;
  }
}
