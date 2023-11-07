import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/constens.dart';
import 'package:noteapp/view/widgets/costom_botton.dart';
import 'package:noteapp/view/widgets/costom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titelControler = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CostomTextField(
              hintText: 'Titel',
              controller: titelControler,
            ),
            const SizedBox(height: 16),
            CostomTextField(
              hintText: 'Content',
              controller: titelControler,
              maxLines: 4,
            ),
            SizedBox(height: 24),
            CostomBotton(),
          ],
        ),
      ),
    );
  }
}
