import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/constens.dart';
import 'package:noteapp/view/widgets/costom_botton.dart';
import 'package:noteapp/view/widgets/costom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
          CostomBotton(
            onTap: () {
              if (fomrKey.currentState!.validate()) {
                fomrKey.currentState!.save();
              } else {
                autoValidateModel = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
