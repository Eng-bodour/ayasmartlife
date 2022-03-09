import 'package:ayaproject/api/api.dart';

import '../../models/client/client_model.dart';

class AddClientServices {
  Future<ClientModel> addClient(
      {required String name_client,
      required String name_enterprise,
      required String mobile,
      required String type_job,
      required String city,
      required String location,
      required String date_create,
      required String fk_user,
      required String date_transfer,
      required String fk_regoin,
      required String type_client}) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://aya.epaysadaka.com/api/client/clientAdd.php',
      body: {
        'name_client': name_client,
        'name_enterprise': name_enterprise,
        'mobile': mobile,
        'type_job': type_job,
        'city': city,
        'location': location,
        'date_create': date_create,
        'fk_user': fk_user,
        'date_transfer': date_transfer,
        'fk_regoin': fk_regoin,
        'type_client': type_client,
      },
      token: '',
    );
    return ClientModel.fromJson(data);
  }
}
