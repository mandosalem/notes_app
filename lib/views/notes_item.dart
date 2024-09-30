


import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24 ,bottom: 24,left: 16 ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'build your career with meamen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.black,
                iconSize: 26,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24,bottom: 16),
            child: Text('May21, 2022',
            style: TextStyle(
              color: Colors.black
            ),),
          ),
        ],
      ),
    );
  }
}
