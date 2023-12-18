import 'package:health_app/core/usecases/usecases.dart';
import 'package:health_app/core/utils/typedef.dart';
import 'package:health_app/src/Authentication/Domain/Repositories/Authentication_Repositores.dart';
import 'package:health_app/src/Authentication/Domain/entities/patient.dart';

class Getusers extends Usecaseswithoutparams<List<User>> {
  const Getusers(this._repositry);
  final AuthenticationRepositories _repositry;

  @override
  ResultFuture<List<User>> call() {}
}
