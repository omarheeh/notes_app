import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/view/widgets/costom_app_bar.dart';
import 'package:noteapp/view/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CostomAppBar(
            iconData: Icons.search,
            titel: 'Notes',
            onPressed: () {},
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
