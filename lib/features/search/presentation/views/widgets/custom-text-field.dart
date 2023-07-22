import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/search/presentation/manager/search_book_cubit/fetch_search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:(text){BlocProvider.of<FetchSearchedCubit>(context).fetchSearchedBook(kSearch: text);} ,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        suffixIcon: Opacity(
          opacity: 0.7,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AssetService.search),
          ),
        ),
      ),
    );
  }
}
