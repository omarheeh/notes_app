import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';

class NoteItem extends StatelessWidget {
  final VoidCallback onTap;
  final NoteModel noteModel;
  const NoteItem({
    super.key,
    required this.onTap,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 8),
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Color(0xffFBF0B2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(bottom: 12),
              title: Text(
                noteModel.titel,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey[900],
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                    'delete sucsses',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )));
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Text(
                noteModel.date,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
