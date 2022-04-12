library gradient_icon;

import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon({
    Key? key,
    this.size = 22,
    required this.gradient,
    required this.icon,
  }) : super(key: key);
  final double size;
  final Gradient gradient;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
      child: Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
    );
  }
}
