import 'package:bookly_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_implementation.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      ApiServices(Dio()),
    ),
  );
  getIt.registerSingleton<SearchRepoImplement>(SearchRepoImplement(ApiServices(Dio())));
}
