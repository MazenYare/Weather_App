import 'package:health_app/core/utils/typedef.dart';
import 'package:health_app/src/Authentication/Domain/entities/patient.dart';

abstract class AuthenticationRepositories {
  const AuthenticationRepositories();

  ResultVoid createUsers({
    required String firstname,
    required String lastname,
    required String gender,
    required String bloodType,
    required int weight,
    required String dateOfBirth,
    required int hight,
  });
  ResultFuture<List<User>> getUsers();
}
