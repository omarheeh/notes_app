import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/costom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titelControler = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
