import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_best_seller_cubit.dart';

class FetchBestSellerCubit extends Cubit<FetchBestSellerStates>{
  FetchBestSellerCubit():super(FetchBestSellerInitial());

}