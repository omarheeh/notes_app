import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_search_icon.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          CostomSearchIcon()
        ],
      ),
    );
  }
}
