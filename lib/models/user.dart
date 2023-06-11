class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.dummy() {
    return User(
      id: 001,
      name: "Dinda",
      userName: "Available",
      email: "dindanissa9@gmail.com",
      profileImage: "asset/lisa.jpg",
      phoneNumber: "082130190205",
    );
  }
}
