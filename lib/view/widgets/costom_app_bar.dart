import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_search_icon.dart';

class CostomAppBar extends StatelessWidget {
  final String titel;
  final IconData iconData;
  final VoidCallback onPressed;
  const CostomAppBar({
    super.key,
    required this.iconData,
    required this.titel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$titel',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          CostomSearchIcon(
            iconData: iconData,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
