class UserModel {
  final int id;
  final String name;
  final String email;
  final String? avatar;
  final bool emailIsActive;
  final bool phoneIsActive;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.avatar,
    required this.emailIsActive,
    required this.phoneIsActive,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatar: json['avatar'],
      emailIsActive: json['email_is_active'],
      phoneIsActive: json['phone_is_active'],
    );
  }
}