import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_app_bar.dart';
import 'package:noteapp/view/widgets/costom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController titelControler = TextEditingController();
    final TextEditingController contentControler = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CostomAppBar(
              iconData: Icons.done,
              titel: 'Edit',
              onPressed: () {},
            ),
            SizedBox(height: 32),
            CostomTextField(
              controller: titelControler,
              hintText: 'Titel',
            ),
            SizedBox(height: 16),
            CostomTextField(
              controller: contentControler,
              hintText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
