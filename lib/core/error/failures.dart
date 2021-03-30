import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final  String message;
  final int statusCode;

  ServerFailure({this.message, this.statusCode});
}