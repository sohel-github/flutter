import 'package:flutter/material.dart';
import 'package:practice/screens/facebook/models/models.dart';
import 'package:practice/screens/facebook/widgets/profile_avator.dart';

class UserCard extends StatelessWidget {
  final User currentUser;

  const UserCard({Key? key, required this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvator(imageUrl: currentUser.imageUrl),
          const SizedBox(width: 5.0),
          Flexible(
            child: Text(
              currentUser.name,
              style: TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
