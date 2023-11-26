import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:vietcard/custom_widgets/deck_search.dart';

import '../entity/deck.dart';

class DeckScreen extends StatelessWidget {
  final List<DeckWithReviewCards> decksList;

  DeckScreen({required this.decksList});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bộ thẻ của bạn'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Iconify(Ri.search_eye_line),
            tooltip: "Tìm kiếm",
            onPressed: () {
              showSearch(
                context: context,
                delegate: DeckSearch(data: decksList),
              );
            },
          )
        ],
      ),
      body: Center(
        child: Text('This is the Deck Screen'),
      ),
    );
  }
}