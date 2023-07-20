import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:equatable/equatable.dart';

abstract class FetchBestSellerStates extends Equatable {
  const FetchBestSellerStates();

  @override
  List<Object> get props => [];
}

class FetchBestSellerInitial extends FetchBestSellerStates {}
class FetchBestSellerLoading extends FetchBestSellerStates {}
class FetchBestSellerFailures extends FetchBestSellerStates {
  final String errorMessage;
  const FetchBestSellerFailures(this.errorMessage);
}
class FetchBestSellerSuccess extends FetchBestSellerStates {
  final List<Items> items;
  const FetchBestSellerSuccess(this.items);
}