import 'package:ayaproject/api/api.dart';
import 'package:ayaproject/models/client/client_model.dart';

class AllClientServices {
  Future<List<ClientModel>> clientServices() async {
    List<dynamic> data = await Api()
        .get(url: 'https://aya.epaysadaka.com/api/client/getClientAll.php');

    List<ClientModel> clientsList = [];

    for (int i = 0; i < data.length; i++) {
      clientsList.add(ClientModel.fromJson(data[i]));
    }
    return clientsList;
  }
}
