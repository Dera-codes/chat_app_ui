import 'package:flutter/material.dart';

import '../models/message_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              chats[index].sender.name,
            );
          },
        ),
      ),
    );
  }
}
