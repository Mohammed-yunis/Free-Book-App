import 'package:bookly_app/features/home/data/models/Items.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_book_cubit/fetch_smiliar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_details_body_view.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.items}) : super(key: key);
  final Items items;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchSimilarCubit>(context).fetchSimilarBook(category:widget.items.volumeInfo!.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsBodyView(items: widget.items),
    );
  }
}
