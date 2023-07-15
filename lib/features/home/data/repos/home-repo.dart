import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>>fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>>fetchFeaturedBooks();
}