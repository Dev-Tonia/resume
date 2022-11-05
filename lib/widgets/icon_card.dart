import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.5,
      height: 55.5,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffAA81F3),
            blurRadius: 25.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
