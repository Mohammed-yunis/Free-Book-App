import 'package:bookly_app/features/home/presentation/manager/best_seller_book_cubit/fetch_best_seller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../featured_book_cubit/fetch_featured_cubit.dart';
import 'choice_books_state.dart';

class ChoiceBooksCubit extends Cubit<ChoiceBooksStates>{
  ChoiceBooksCubit():super(ChoiceBooksInitial());


  Future<void> choiceBook(context,value) async {
    emit(ChoiceBooksLoading());
    BlocProvider.of<FetchBestSellerCubit>(context).query=value.toString();
    BlocProvider.of<FetchFeaturedCubit>(context).query=value.toString();
    await BlocProvider.of<FetchBestSellerCubit>(context).fetchBestSellerBook();
    await BlocProvider.of<FetchFeaturedCubit>(context).fetchFeaturedBook();
    emit(ChoiceBooksSuccess());
    }
  }

