import 'package:bookly_app/features/home/presentation/manager/best_seller_book_cubit/fetch_best_seller_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_book_cubit/fetch_featured_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/srevice_locator.dart';
import 'features/home/data/repos/home_repo_implementation.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FetchBestSellerCubit(getIt.get<HomeRepoImplement>())..fetchBestSellerBook();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchFeaturedCubit(getIt.get<HomeRepoImplement>())..fetchFeaturedBook();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimerColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
