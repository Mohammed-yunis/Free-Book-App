import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';

import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home-repo.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<Items>>> fetchBestSellerBooks() async {
   try {
     var data =  await ApiServices.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=bestseller&q=subject:programming');
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
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() async {
    try {
      var data =  await ApiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
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