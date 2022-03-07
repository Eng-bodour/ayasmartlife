class ClientModel {
  final int idClients;

  final String nameClient;
  final String typeJob;
  final String city;
  final String location;
  final int fkRegoin;

  final int fkUser;
  final String typeClient;

  final int mobile;
  //final String dateTransfer;
  //final String dateChangetype;
  // final String reasonChange;
  // final String reasonTransfer;
  final int nameCountry;
  final String nameRegoin;

  ClientModel({
    required this.idClients,
    required this.nameClient,
    required this.typeJob,
    required this.city,
    required this.location,
    required this.fkRegoin,
    required this.typeClient,
    required this.fkUser,
    required this.mobile,
    // required this.dateTransfer,
    //required this.dateChangetype,
    // required this.reasonChange,
    //  required this.reasonTransfer,
    required this.nameCountry,
    required this.nameRegoin,
  });
  factory ClientModel.fromJson(jsondata) {
    return ClientModel(
      idClients: jsondata['id_clients'],
      nameClient: jsondata['name_client'],
      typeJob: jsondata['type_job'],
      city: jsondata['city'],
      location: jsondata['location'],
      fkRegoin: jsondata['fk_regoin'],
      typeClient: jsondata['type_client'],
      fkUser: jsondata['fk_user'],

      mobile: jsondata['mobile'],
      //  dateTransfer: jsondata['date_transfer'],
      //dateChangetype: jsondata['date_changetype'],
      //reasonChange: jsondata['reason_change'],
      // reasonTransfer: jsondata['reason_transfer'],
      nameCountry: jsondata['nameCountry'],
      nameRegoin: jsondata['name_regoin'],
    );
  }
}



// class ClientModel {
//   final String resul;
//   final int code;
//   final MessageModel message;
//   ClientModel({
//     required this.resul,
//     required this.code,
//     required this.message,
//   });
//   factory ClientModel.fromJson(jsondata) {
//     return ClientModel(
//       resul: jsondata['resul'],
//       code: jsondata['code'],
//       message: MessageModel.fromJson(jsondata['message']),
//     );
//   }
// }
