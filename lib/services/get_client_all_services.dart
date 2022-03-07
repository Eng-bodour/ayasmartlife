import 'package:ayaproject/api/api.dart';
import 'package:ayaproject/models/client_model.dart';

class AllClientServices {
  Future<List<ClientModel>> getAllClient() async {
    List<dynamic> data = await Api()
        .get(uri: 'https://aya.epaysadaka.com/api/client/getClientAll.php');

    List<ClientModel> clientsList = [];

    for (int i = 0; i < data.length; i++) {
      clientsList.add(ClientModel.fromJson(data[i]));
    }
    return clientsList;
  }
}
