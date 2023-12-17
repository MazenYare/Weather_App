import 'package:health_app/core/utils/typedef.dart';
import 'package:health_app/featuers/Authentication/Domain/entities/patient.dart';

abstract class AuthenticationRepositories {
  const AuthenticationRepositories();

  ResultVoid createUsers({
    required String firstname,
    required String lastname,
    required String gender,
    required String bloodType,
  });
  ResultFuture<List<User>> getUsers();
}
