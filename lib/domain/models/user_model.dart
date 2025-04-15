class UserModel {
  final String uid;
  final String email;
  final String name;
  final String type; // Doctor, Patient, Pharmacist, Pathologist, Admin

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.type,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      type: map['type'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'type': type,
    };
  }
}