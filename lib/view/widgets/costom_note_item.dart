import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 8),
      margin: EdgeInsets.only(bottom: 15),
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
              'Flutter Tips',
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
                'Build your career with omar heeh',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
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
              'May21 , 2022',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
