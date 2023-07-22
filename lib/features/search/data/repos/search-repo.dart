import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<Items>>>fetchSearchedBooks({required String kSearch});
}