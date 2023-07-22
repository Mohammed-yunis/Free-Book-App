import 'package:bookly_app/features/home/data/repos/home-repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_similar_state.dart';

class FetchSimilarCubit extends Cubit<FetchSimilarStates>{
  FetchSimilarCubit(this.homeRepo):super(FetchSimilarInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBook({required String category}) async {
    emit(FetchSimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(category:category );
    result.fold((failure) {
      emit(FetchSimilarFailures(failure.errorMessage));
    }, (book) {
      emit(FetchSimilarSuccess(book));
    });
  }
}
