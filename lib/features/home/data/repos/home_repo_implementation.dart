import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home-repo.dart';

class HomeRepoImplement implements HomeRepo{
  final ApiServices apiServices;
  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failure, List<Items>>> fetchBestSellerBooks({required String kQuery}) async {
   try {
     var data =  await apiServices.get(endPoint: 'volumes?Sorting=bestseller&q=$kQuery');
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

  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks({required String kQuery}) async {
    try {
      var data =  await apiServices.get(endPoint: 'volumes?q=$kQuery');
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

  @override
  Future<Either<Failure, List<Items>>> fetchSimilarBooks({required String category}) async {
    try {
      var data =  await apiServices.get(endPoint: 'volumes?Sorting=relevance&q=$category');
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