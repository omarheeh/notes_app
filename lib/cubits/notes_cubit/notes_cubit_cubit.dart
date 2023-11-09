import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constens.dart';
import 'package:noteapp/models/note_model.dart';

part 'notes_cubit_state.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(KBoxNote);
    List<NoteModel> notesList = notesBox.values.toList();
    notes = notesList;
    emit(NoteSucces());
  }
}
