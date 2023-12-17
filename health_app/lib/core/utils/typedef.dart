import 'package:dartz/dartz.dart';
import 'package:health_app/core/errors/faliuers.dart';

typedef ResultFuture<T> = Future<Either<failure, T>>;
typedef ResultVoid<Void> = ResultFuture<void>;
