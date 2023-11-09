import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/view/edit_note_view.dart';
import 'package:noteapp/view/widgets/costom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BlocBuilder<NoteCubit, NotesState>(
          builder: (context, state) {
            List<NoteModel> notes =
                BlocProvider.of<NoteCubit>(context).notes ?? [];
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: ((context, index) => NoteItem(
                    noteModel: notes[index],
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EditNoteView(),
                        ),
                      );
                    },
                  )),
            );
          },
        ),
      ),
    );
  }
}
