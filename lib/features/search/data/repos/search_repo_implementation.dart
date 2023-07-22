import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'search-repo.dart';

class SearchRepoImplement implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImplement(this.apiServices);

  @override
  Future<Either<Failure, List<Items>>> fetchSearchedBooks({required String kSearch})async {
    try {
      var data =  await apiServices.get(endPoint: 'volumes?q=$kSearch');
      BookModel bookModel=BookModel.fromJson(data);
      return Right(bookModel.items!);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }


}