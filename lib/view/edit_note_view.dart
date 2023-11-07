import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(),
      ),
    );
  }
}
