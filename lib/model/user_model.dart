class UserModel {
  String name;
  String email;
  String bio;
  String profilePic;
  String createdat;
  String phoneNumber;
  String uid;

  UserModel(
      {required this.name,
      required this.email,
      required this.bio,
      required this.profilePic,
      required this.createdat,
      required this.phoneNumber,
      required this.uid});
// from map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      bio: map['bio'] ?? '',
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      createdat: map['created'] ?? '',
      profilePic: map['profilepic'] ?? '',
    );
  }
  // to map
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "bio": bio,
      "profilePic": profilePic,
      "phoneNumber": phoneNumber,
      "createdAt": createdat,
    };
  }
}
