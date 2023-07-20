import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_featured_state.dart';

class FetchFeaturedCubit extends Cubit<FetchFeaturedStates>{
  FetchFeaturedCubit(this.homeRepo):super(FetchFeaturedInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBook() async {
    emit(FetchFeaturedLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FetchFeaturedFailures(failure.errorMessage));
    }, (book) {
      emit(FetchFeaturedSuccess(book));
    });
  }
}
