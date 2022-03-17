import 'package:ayaproject/models/user/user_model.dart';
import 'package:ayaproject/constant.dart';
import '../../api/api.dart';

class UpdateUserServices {
  Future<UserModel> addClient({
    required int idUser,
    Map<String, dynamic>? body,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: '$uri/users/updateuser_patch.php/$idUser',
      body: body,
      token: '',
    );
    return UserModel.fromJson(data);
  }
}
