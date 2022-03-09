class UserModel {
  final int idUser;
  final String nameUser;
  final String email;
  final String mobile;
  final int codeVerfiy;
  final int fkCountry;
  final String typeAdministration;
  final int typeLevel;
  final int fkRegoin;
  final String nameCountry;
  final String nameRegoi;

  UserModel({
    required this.idUser,
    required this.nameUser,
    required this.email,
    required this.mobile,
    required this.codeVerfiy,
    required this.fkCountry,
    required this.typeAdministration,
    required this.typeLevel,
    required this.fkRegoin,
    required this.nameCountry,
    required this.nameRegoi,
  });

  factory UserModel.fromJson(jsonData) {
    return UserModel(
      idUser: jsonData['id_user'],
      nameUser: jsonData['nameUser'],
      email: jsonData['email'],
      mobile: jsonData['mobile'],
      codeVerfiy: jsonData['code_verfiy'],
      fkCountry: jsonData['fk_country'],
      typeAdministration: jsonData['type_administration'],
      typeLevel: jsonData['type_level'],
      fkRegoin: jsonData['fk_regoin'],
      nameCountry: jsonData['nameCountry'],
      nameRegoi: jsonData['name_regoin'],
    );
  }
}
