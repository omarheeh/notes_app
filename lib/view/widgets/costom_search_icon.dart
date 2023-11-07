import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  const CostomSearchIcon({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          iconData,
        ),
      ),
    );
  }
}
