import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health_app/src/Authentication/Domain/Repositories/Authentication_Repositores.dart';
import 'package:health_app/src/Authentication/Domain/Usecases/Create_user.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthenticationRepositories {}

void main() {
  late CreateUser usecase;
  late AuthenticationRepositories repository;

  setUpAll(() {
    repository = MockAuthRepository();
    usecase = CreateUser(repository);
  });
  const params = CreateUserParams.empty();
  test('Should call the [AuthenticationRepository.createuser]', () async {
    //Arrange
    when(() => repository.createUsers(
            firstname: any(named: 'firstname'),
            lastname: any(named: 'lastname'),
            gender: any(named: 'gender'),
            bloodType: any(named: 'bloodType'),
            weight: any(named: 'weight'),
            dateOfBirth: any(named: 'dateOfBirth'),
            hight: any(named: 'hight')))
        .thenAnswer((invocation) async => const Right(null));
    //Act
    final result = await usecase(params);
    //Assesrt
    expect(result, equals(const Right<dynamic, void>(null)));
    verify(() => repository.createUsers(
        firstname: params.firstname,
        lastname: params.lastname,
        gender: params.gender,
        bloodType: params.bloodType,
        weight: params.weight,
        dateOfBirth: params.dateOfBirth,
        hight: params.hight)).called(1);
    verifyNoMoreInteractions(repository);
  });
}
