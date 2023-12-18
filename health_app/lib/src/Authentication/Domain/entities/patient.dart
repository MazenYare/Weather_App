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

  const User.empty()
      : this(
            id: 1,
            bloodType: '_empty.bloodType',
            wegiht: 1,
            hight: 1,
            dateOfBirth: '_.empty.dateofBirth',
            firstname: '_empty.firstname',
            gender: '_empty.gender',
            lastname: '_empty.lastname');

  final String firstname;
  final int id;
  final String lastname;
  final int wegiht;
  final String dateOfBirth;
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
      dateOfBirth: 'dateOfBirth',
      gender: 'gender',
      bloodType: 'bloodType',
      hight: 1);
}
