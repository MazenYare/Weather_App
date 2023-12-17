import 'package:equatable/equatable.dart';
import 'package:health_app/core/usecases/usecases.dart';
import 'package:health_app/core/utils/typedef.dart';
import 'package:health_app/featuers/Authentication/Domain/Repositories/Authentication_Repositores.dart';

class CreateUser extends usecaseswithparams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepositories _repository;

  @override
  ResultVoid call(CreateUserParams params) async => _repository.createUsers(
      firstname: params.firstname,
      lastname: params.lastname,
      gender: params.gender,
      bloodType: params.bloodType);
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.bloodType,
    required this.firstname,
    required this.gender,
    required this.lastname,
  });
  final String firstname;
  final String lastname;
  final String gender;
  final String bloodType;

  @override
  List<Object?> get props => [firstname, lastname, gender, bloodType];
}
