import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class failure extends Equatable {
  const failure({required this.msg, required this.statecode});

  final String statecode;
  final String msg;

  @override
  List<Object> get props => [msg, statecode];
}

class ApiFaliure extends failure {
  const ApiFaliure({required super.msg, required super.statecode});
}
