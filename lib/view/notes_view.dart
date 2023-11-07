import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
