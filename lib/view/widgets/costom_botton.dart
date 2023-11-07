import 'package:flutter/material.dart';
import 'package:noteapp/constens.dart';

class CostomBotton extends StatelessWidget {
  const CostomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
