import 'package:flutter/material.dart';
import 'package:test_app/Featuers/home/presenttation/views/widgests/similar_books_list_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Styles.textstyle16
              .copyWith(fontWeight: FontWeight.w700, fontFamily: KMontserrat),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
