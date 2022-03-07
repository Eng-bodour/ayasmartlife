import 'package:ayaproject/models/client_model.dart';

class Clients {
  final List<ClientModel> clients;

  Clients({required this.clients});
  factory Clients.fromJson(jsondata) {
    return Clients(clients: jsondata['message']);
  }
}
