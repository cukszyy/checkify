import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 85,
      top: 40,
      bottom: 0,
      width: 1,
      child: Container(
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
