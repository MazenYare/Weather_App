import 'package:equatable/equatable.dart';
import 'package:health_app/core/usecases/usecases.dart';
import 'package:health_app/core/utils/typedef.dart';
import 'package:health_app/src/Authentication/Domain/Repositories/Authentication_Repositores.dart';

class CreateUser extends usecaseswithparams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepositories _repository;

  @override
  ResultVoid call(CreateUserParams params) async => _repository.createUsers(
      firstname: params.firstname,
      weight: params.weight,
      lastname: params.lastname,
      gender: params.gender,
      bloodType: params.bloodType,
      dateOfBirth: params.dateOfBirth,
      hight: params.hight);
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.weight,
    required this.dateOfBirth,
    required this.hight,
    required this.bloodType,
    required this.firstname,
    required this.gender,
    required this.lastname,
  });
  const CreateUserParams.empty()
      : this(
            bloodType: '_empty.bloodType',
            weight: 1,
            hight: 1,
            dateOfBirth: '_.empty.dateofBirth',
            firstname: '_empty.firstname',
            gender: '_empty.gender',
            lastname: '_empty.lastname');

  final String firstname;
  final int weight;
  final int hight;
  final String dateOfBirth;
  final String lastname;
  final String gender;
  final String bloodType;

  @override
  List<Object?> get props => [firstname, lastname, gender, bloodType];
}
