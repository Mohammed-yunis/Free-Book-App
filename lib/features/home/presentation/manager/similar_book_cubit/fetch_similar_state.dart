import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:equatable/equatable.dart';

abstract class FetchSimilarStates extends Equatable {
  const FetchSimilarStates();

  @override
  List<Object> get props => [];
}

class FetchSimilarInitial extends FetchSimilarStates {}
class FetchSimilarLoading extends FetchSimilarStates {}
class FetchSimilarFailures extends FetchSimilarStates {
  final String errorMessage;
  const FetchSimilarFailures(this.errorMessage);
}
class FetchSimilarSuccess extends FetchSimilarStates {
  final List<Items> items;
  const FetchSimilarSuccess(this.items);
}