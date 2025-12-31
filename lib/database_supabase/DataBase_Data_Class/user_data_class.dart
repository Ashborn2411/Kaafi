class User {
  final String userId;
  final String name;
  final String email;
  final String? role;

  User({
    required this.userId,
    required this.name,
    required this.email,
    this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
    );
  }
}
