import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:vietcard/custom_widgets/three_card_type_number_row.dart';

import '../entity/deck.dart';
import '../helpers/validate.dart';
import 'animated_progress_bar.dart';
import 'animated_text.dart';

class UserDeckTile extends StatelessWidget {
  final DeckWithReviewCards item;

  UserDeckTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Leading Section
            Card(
              margin: EdgeInsets.zero,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                width: 75,
                height: 75,
                child: validateURL(item.deck.descriptionImgPath)
                    ? CachedNetworkImage(
                  fit: BoxFit.cover,
                  errorWidget: (context, _, __) => const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/deck_placeholder.png'),
                  ),
                  imageUrl: item.deck.descriptionImgPath,
                  placeholder: (context, url) => const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/deck_placeholder.png'),
                  ),
                )
                    : const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/deck_placeholder.png'),
                ),
              ),
            ),

            // Padding between leading and title/subtitle
            const SizedBox(width: 16.0),

            // Title and Subtitle Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedText(
                    text: item.deck.name,
                    pauseAfterRound: const Duration(seconds: 3),
                    showFadingOnlyWhenScrolling: false,
                    startAfter: const Duration(seconds: 3),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    defaultAlignment: TextAlign.start,
                  ),
                  const SizedBox(height: 4.0),
                  ThreeCardTypeNumbersRow(
                    numBlueCards: item.numBlueCards,
                    numRedCards: item.numRedCards,
                    numGreenCards: item.numGreenCards,
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      AnimatedProgressBar(
                        width: 150,
                        height: 14,
                        progress: item.deck.totalNewCards / item.deck.totalCards,
                        backgroundColor: const Color(0xffD9D9D9),
                        progressColor: const Color(0xff40a5e8),
                        innerProgressColor: const Color(0xff6db7f4),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        '${(item.deck.totalNewCards / item.deck.totalCards * 100).toStringAsFixed(0)}%',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PublicDeckTile extends StatelessWidget {
  final DeckWithReviewCards item;

  PublicDeckTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Leading Section
            Card(
              margin: EdgeInsets.zero,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                width: 75,
                height: 75,
                child: validateURL(item.deck.descriptionImgPath)
                    ? CachedNetworkImage(
                  fit: BoxFit.cover,
                  errorWidget: (context, _, __) => const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/deck_placeholder.png'),
                  ),
                  imageUrl: item.deck.descriptionImgPath,
                  placeholder: (context, url) => const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/deck_placeholder.png'),
                  ),
                )
                    : const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/deck_placeholder.png'),
                ),
              ),
            ),

            // Padding between leading and title/subtitle
            SizedBox(width: 16.0),

            // Title and Subtitle Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedText(
                    text: item.deck.name,
                    pauseAfterRound: const Duration(seconds: 3),
                    showFadingOnlyWhenScrolling: false,
                    startAfter: const Duration(seconds: 3),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    defaultAlignment: TextAlign.start,
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Text(
                        "Số lượng: ",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "${item.deck.totalCards}",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 2),
                        child: Iconify(
                          Mdi.cards_playing,
                          color: Colors.purple,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.0),
                  Row(
                    children: [
                      Text(
                        "Đánh giá: ",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "${item.deck.rating.toStringAsFixed(1)}",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 2),
                        child: Icon(
                          Icons.star,
                          color: Color(0xffedc202),
                          size: 20.0,
                        ),
                      ),
                      Text(
                        " ~ ${item.deck.views}",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 2),
                        child: Iconify(
                          Ion.ios_eye,
                          color: Colors.green,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}