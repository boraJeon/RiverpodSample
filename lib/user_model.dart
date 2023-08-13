class UserModel {
  UserModel({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
  });

  String name;
  String phoneNumber;
  String emailAddress;

  UserModel copyWith(
      {String? name, String? phoneNumber, String? emailAddress}) {
    return UserModel(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      emailAddress: emailAddress ?? this.emailAddress,
    );
  }
}
