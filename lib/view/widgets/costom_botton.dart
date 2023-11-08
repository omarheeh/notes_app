import 'package:flutter/material.dart';
import 'package:noteapp/constens.dart';

class CostomBotton extends StatelessWidget {
  final VoidCallback onTap;
  const CostomBotton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(KPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
