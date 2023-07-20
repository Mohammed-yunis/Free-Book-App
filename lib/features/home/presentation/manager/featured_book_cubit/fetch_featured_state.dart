import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_featured_cubit.dart';

class FetchFeaturedCubit extends Cubit<FetchFeaturedStates>{
  FetchFeaturedCubit():super(FetchFeaturedInitial());

}