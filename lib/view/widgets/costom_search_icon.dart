import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        Icons.search,
      ),
    );
  }
}
