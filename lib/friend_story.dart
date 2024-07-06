import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendStory extends StatelessWidget {

  final int index;

  const FriendStory({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Colors.blue,
      child: Column(
        children: [
          Text("User $index" , style: TextStyle(fontSize: 20, color: Colors.black, decoration: TextDecoration.none),)
        ],
      ),
    );
  }
}
