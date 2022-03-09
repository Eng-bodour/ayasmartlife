import 'package:ayaproject/models/user/user_model.dart';

import '../../api/api.dart';

class AddUserServices {
  Future<UserModel> addClient({
    required String nameUser,
    required String email,
    required String mobile,
    required String codeVerfiy,
    required String fkCountry,
    required String typeAdministration,
    required String typeLevel,
    required String regoin,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://aya.epaysadaka.com/api/client/clientAdd.php',
      body: {
        'nameUser': nameUser,
        'email': email,
        'mobile': mobile,
        'code_verfiy': codeVerfiy,
        'fk_country': fkCountry,
        'type_administration': typeAdministration,
        'type_level': typeLevel,
        'regoin': regoin,
      },
      token: '',
    );
    return UserModel.fromJson(data);
  }
}
