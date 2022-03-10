import 'package:ayaproject/api/api.dart';
import 'package:ayaproject/constant.dart';
import 'package:ayaproject/models/client/client_model.dart';

class GetClientServices {
  Future<List<ClientModel>> clientsServices() async {
    List<dynamic> data = await Api().get(url: '$uri/client/getClientAll.php');

    List<ClientModel> clientsList = [];

    for (int i = 0; i < data.length; i++) {
      clientsList.add(ClientModel.fromJson(data[i]));
    }
    return clientsList;
  }
}
