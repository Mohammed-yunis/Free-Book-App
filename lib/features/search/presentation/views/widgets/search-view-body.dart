import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:bookly_app/features/search/presentation/manager/search_book_cubit/fetch_search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom-search-list-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/srevice_locator.dart';
import 'custom-text-field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => FetchSearchedCubit(getIt.get<SearchRepoImplement>()),
      child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const CustomTextFieldSearch(),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      'Search Result',
                      style: Style.textTheme18,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Expanded(
                        child:
                            CustomSearchListView(width: width, height: height,)),
                  ],
                ),
              ),
            ),
    );
  }
}
