import 'package:health_app/core/utils/typedef.dart';

abstract class usecaseswithparams<Type, Params> {
  const usecaseswithparams();
  ResultFuture<Type> call(Params params);
}

abstract class Usecaseswithoutparams<Type> {
  const Usecaseswithoutparams();
  ResultFuture<Type> call();
}
