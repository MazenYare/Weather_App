import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health_app/src/Authentication/Domain/Repositories/Authentication_Repositores.dart';
import 'package:health_app/src/Authentication/Domain/Usecases/Get_users.dart';
import 'package:health_app/src/Authentication/Domain/entities/patient.dart';
import 'package:mocktail/mocktail.dart';
import 'create_user_test.dart';

void main() {
  late AuthenticationRepositories repository;
  late Getusers usecase;

  setUp(() {
    repository = MockAuthRepository();
    usecase = Getusers(repository);
  });

  const tResponse = [User.empty()];

  test(
      'should call [AuthenticationReopsitory.getUsers]  and return [list<Users>]',
      () async {
    //Arrange
    when(() => repository.getUsers())
        .thenAnswer((_) async => const Right(tResponse));
  });
}
