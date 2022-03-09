import 'package:ayaproject/models/user/user_model.dart';

import '../../api/api.dart';
import 'package:http/http.dart' as http;

class GetUserServices {
//  static Future<List<UserModel>> usersServices() async {
//     List<dynamic> data = await Api()
//         .get(uri: 'https://aya.epaysadaka.com/api/users/getUser.php');

//     List<UserModel> usersList = [];

//     for (int i = 0; i < data.length; i++) {
//       usersList.add(UserModel.fromJson(data[i]));
//     }
//     return usersList;
//   }
  Future<List<UserModel>> usersServices() async {
    var response = await http
        .get(Uri.parse('https://aya.epaysadaka.com/api/users/getUser.php'));
    if (response.statusCode == 200) {
      var jsonData = response.body;
      List<UserModel> usersList = [];
      for (int i = 0; i < jsonData.length; i++) {
        usersList.add(UserModel.fromJson(jsonData));
      }
      return usersList;
    } else {
      return throw Exception('Failed to load product');
    }
  }

  Future<UserModel> userByIdServices({required int idUser}) async {
    UserModel data = await Api().get(
        url: 'https://aya.epaysadaka.com/api/users/getuserByID.php/$idUser');

    return data;
  }

  Future<UserModel> userByUserNAmeServices({required String userName}) async {
    UserModel data = await Api().get(
        url:
            'https://aya.epaysadaka.com/api/users/getuserByName.php/$userName');

    return data;
  }
}
