import 'package:flutter/material.dart';

class ThreeCardTypeNumbersRow extends StatelessWidget {
  final int numBlueCards;
  final int numRedCards;
  final int numGreenCards;

  ThreeCardTypeNumbersRow({
    required this.numBlueCards,
    required this.numRedCards,
    required this.numGreenCards,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildNumberText(numBlueCards, Colors.blue),
        _buildSizedBox(),
        _buildNumberText(numRedCards, Colors.red),
        _buildSizedBox(),
        _buildNumberText(numGreenCards, Colors.green),
      ],
    );
  }

  Widget _buildNumberText(int number, Color color) {
    return Text(
      number.toStringAsFixed(0),
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget _buildSizedBox() {
    return SizedBox(
      width: 6.0,
    );
  }
}