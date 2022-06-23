

class User {
  int id;
  String account;
  String password;
  String name;
  String phoneNumber;
  String gender;
  String address;
  bool isBan;

  User(
      {required this.id,
      required this.account,
      required this.password,
      required this.name,
      required this.phoneNumber,
      required this.gender,
      required this.address,
      required this.isBan});

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
        id: map["id"],
        account: map["account"],
        password: map["password"],
        name: map["name"],
        phoneNumber: map["phone_number"],
        gender: map["gender"],
        address: map["address"],
        isBan: map["is_ban"]);
  }
}
