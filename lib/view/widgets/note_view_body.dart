import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_app_bar.dart';
import 'package:noteapp/view/widgets/costom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CostomAppBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, index) {
                return NoteItem();
              }),
            ),
          ),
        ],
      ),
    );
  }
}
