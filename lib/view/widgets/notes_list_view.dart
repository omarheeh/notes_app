import 'package:flutter/material.dart';
import 'package:noteapp/view/edit_note_view.dart';
import 'package:noteapp/view/widgets/costom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: ((context, index) => NoteItem(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditNoteView(),
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
