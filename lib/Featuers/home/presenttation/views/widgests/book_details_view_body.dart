import 'package:flutter/material.dart';
import 'package:test_app/Featuers/home/presenttation/views/widgests/similar_books_list_view.dart';
import 'package:test_app/Featuers/home/presenttation/views/widgests/similar_boos_section.dart';
import 'package:test_app/core/utils/styles.dart';
import 'package:test_app/core/utils/widgests/custom_button.dart';

import '../../../../../constants.dart';
import 'book_rating.dart';
import 'books_datails_section.dart';
import 'booksaction.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: const [
                CustomBookDetailsAppBar(),
                BookDatailsSection(),
                SizedBox(
                  height: 40,
                ),
                SimilarBooksSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
