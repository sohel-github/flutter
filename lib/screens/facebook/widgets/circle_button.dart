import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Function onPressed;

  const CircleButton(
      {Key? key,
      required this.icon,
      required this.size,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        onPressed: () => onPressed,
        icon: Icon(
          icon,
          size: size,
          color: Colors.black,
        ),
      ),
    );
  }
}
