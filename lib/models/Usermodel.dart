import 'dart:ffi';

import 'package:iAttend/ui/views/teams/teams.dart';

class UserModel {
  String? uid;
  String? address;
  String? email;
  String? firstName;
  String? lastName;
  String? groupId;
  String? image;
  String? role;
  Array? teams;

  UserModel({
    this.uid,
    this.address,
    this.email,
    this.firstName,
    this.lastName,
    this.groupId,
    this.image,
    this.role,
    this.teams,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      address: map['address'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['firstName'],
      groupId: map['groupId'],
      image: map['image'],
      role: map['role'],
      teams: map['teams']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'address': address,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'groupId': groupId,
      'image': image,
      'role' : role,
      'teams' : teams,
    };
  }
}
