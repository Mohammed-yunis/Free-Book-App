import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<Items>>>fetchBestSellerBooks({required String kQuery});
  Future<Either<Failure,List<Items>>>fetchFeaturedBooks({required String kQuery});
  Future<Either<Failure,List<Items>>>fetchSimilarBooks({required String category});
}