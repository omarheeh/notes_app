import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CostomAppBar(),
      ],
    );
  }
}
