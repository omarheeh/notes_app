import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/view/widgets/costom_botton.dart';
import 'package:noteapp/view/widgets/costom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> fomrKey = GlobalKey();
  AutovalidateMode autoValidateModel = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fomrKey,
      autovalidateMode: autoValidateModel,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CostomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Titel',
          ),
          const SizedBox(height: 16),
          CostomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLines: 4,
          ),
          SizedBox(height: 24),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CostomBotton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (fomrKey.currentState!.validate()) {
                    fomrKey.currentState!.save();
                    var noteModel = NoteModel(
                      titel: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.red.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateModel = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
