import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.wegiht,
    required this.dateOfBirth,
    required this.gender,
    required this.bloodType,
    required this.hight,
  });

  final String firstname;
  final int id;
  final String lastname;
  final int wegiht;
  final DateTime dateOfBirth;
  final String gender;
  final String bloodType;
  final int hight;

  @override
  List<Object?> get props => [id];
}

void main() {
  // ignore: unused_local_variable, prefer_const_constructors
  final user1 = User(
      id: 1,
      firstname: 'firstname',
      lastname: 'lastname',
      wegiht: 1,
      dateOfBirth: DateTime.utc(1, 1, 1),
      gender: 'gender',
      bloodType: 'bloodType',
      hight: 1);
}
