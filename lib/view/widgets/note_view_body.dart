import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_app_bar.dart';
import 'package:noteapp/view/widgets/costom_note_item.dart';
import 'package:noteapp/view/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CostomAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}
