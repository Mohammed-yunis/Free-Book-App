import 'package:bookly_app/features/search/data/repos/search-repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_searsh_state.dart';

class FetchSearchedCubit extends Cubit<FetchSearchedStates>{
  FetchSearchedCubit(this.searchRepo):super(FetchSearchedInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchedBook({required String kSearch}) async {
    emit(FetchSearchedLoading());
    var result = await searchRepo.fetchSearchedBooks(kSearch:kSearch );
    result.fold((failure) {
      emit(FetchSearchedFailures(failure.errorMessage));
    }, (book) {
      emit(FetchSearchedSuccess(book));
    });
  }
}
