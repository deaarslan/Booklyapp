import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'booksaction.dart';
import 'custom_book_item.dart';

class BookDatailsSection extends StatelessWidget {
  const BookDatailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text('The Jungle Book',
            style: Styles.textstyle30.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
              style: Styles.textstyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
