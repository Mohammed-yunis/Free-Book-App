import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home-repo.dart';
import 'fetch_best_seller_state.dart';

class FetchBestSellerCubit extends Cubit<FetchBestSellerStates>{
  FetchBestSellerCubit(this.homeRepo):super(FetchBestSellerInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBook() async {
    emit(FetchBestSellerLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(FetchBestSellerFailures(failure.errorMessage));
    }, (book) {
      emit(FetchBestSellerSuccess(book));
    });
  }
}
