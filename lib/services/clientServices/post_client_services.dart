import 'package:ayaproject/api/api.dart';
import 'package:ayaproject/constant.dart';

import '../../models/client/client_model.dart';

class AddClientServices {
  Future<ClientModel> addClient(
      {required String nameClient,
      required String nameEnterprise,
      required String mobile,
      required String typeJob,
      required String city,
      required String location,
      required String dateCreate,
      required String fkUser,
      required String dateTransfer,
      required String fkRegoin,
      required String typeClient}) async {
    Map<String, dynamic> data = await Api().post(
      url: '$uri/client/clientAdd.php',
      body: {
        'name_client': nameClient,
        'name_enterprise': nameEnterprise,
        'mobile': mobile,
        'type_job': typeJob,
        'city': city,
        'location': location,
        'date_create': dateCreate,
        'fk_user': fkUser,
        'date_transfer': dateTransfer,
        'fk_regoin': fkRegoin,
        'type_client': typeClient,
      },
      token: '',
    );
    return ClientModel.fromJson(data);
  }
}
