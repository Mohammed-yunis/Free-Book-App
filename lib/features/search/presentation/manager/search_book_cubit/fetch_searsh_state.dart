import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:equatable/equatable.dart';

abstract class FetchSearchedStates extends Equatable {
  const FetchSearchedStates();

  @override
  List<Object> get props => [];
}

class FetchSearchedInitial extends FetchSearchedStates {}
class FetchSearchedLoading extends FetchSearchedStates {}
class FetchSearchedFailures extends FetchSearchedStates {
  final String errorMessage;
  const FetchSearchedFailures(this.errorMessage);
}
class FetchSearchedSuccess extends FetchSearchedStates {
  final List<Items> items;
  const FetchSearchedSuccess(this.items);
}