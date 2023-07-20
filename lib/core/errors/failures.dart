import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;

  Failure(this.errorMessage);
}
class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioError (DioException dioError){
    switch(dioError.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out With Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out With Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Time Out With Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Connection Time Out With Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('Connection Time Out With Server');
        }
        return ServerFailure('Unexpected Error, try later');
      default:
        return ServerFailure('Ops there was an error , try again');
    }
  }

  factory ServerFailure.fromResponse(int statuesCode,dynamic response){
    if(statuesCode==400||statuesCode==401||statuesCode==403){
      return ServerFailure(response['error']['message']);
    }else if(statuesCode==404){
      return ServerFailure('Your Request not found , try later');
    }else if(statuesCode==500){
      return ServerFailure('Internal Server error ,try later');
    }else{
      return ServerFailure('Ops there was an error , try again');
    }
  }
}