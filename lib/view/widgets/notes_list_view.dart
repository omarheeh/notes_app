import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: ((context, index) => NoteItem()),
      ),
    );
  }
}
