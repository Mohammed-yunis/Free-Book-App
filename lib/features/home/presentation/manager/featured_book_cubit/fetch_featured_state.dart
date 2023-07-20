import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:equatable/equatable.dart';

abstract class FetchFeaturedStates extends Equatable {
  const FetchFeaturedStates();

  @override
  List<Object> get props => [];
}

class FetchFeaturedInitial extends FetchFeaturedStates {}
class FetchFeaturedLoading extends FetchFeaturedStates {}
class FetchFeaturedFailures extends FetchFeaturedStates {
  final String errorMessage;
  const FetchFeaturedFailures(this.errorMessage);
}
class FetchFeaturedSuccess extends FetchFeaturedStates {
  final List<Items> items;
  const FetchFeaturedSuccess(this.items);
}