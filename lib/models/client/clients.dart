import 'package:ayaproject/models/client/client_model.dart';

class Clients {
  List<ClientModel>? clients;

  Clients({
    required this.clients,
  });
  factory Clients.fromJson(jsondata) {
    return Clients(
      clients: jsondata['message'],
    );
  }
}
