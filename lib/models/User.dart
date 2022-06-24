class User {
  int id;
  String account;
  String password;
  String name;
  String phoneNumber;
  int gender;
  String address;

  User(
      {required this.id,
      required this.account,
      required this.password,
      required this.name,
      required this.phoneNumber,
      required this.gender,
      required this.address});
}

final librarian = User(
    id: 1,
    account: 'ngocnguyenc3',
    name: 'Ngọc Nguyên',
    password: '123123',
    phoneNumber: '0388186506',
    gender: 1,
    address: '25/42 Đặng Trần Côn');
