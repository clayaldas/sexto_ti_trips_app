import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final bool mini;
  final IconData icon;
  final double iconSize;
  final Color color;

  const CircleButton(
      {super.key,
      required this.mini,
      required this.icon,
      required this.iconSize,
      required this.color});

  @override
  State<StatefulWidget> createState() {
    return _CircleButtonState();
  }
}

class _CircleButtonState extends State<CircleButton> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: widget.mini ? 35 : 60,
        width: widget.mini ? 35 : 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
        ),
        child: Center(
          child: Icon(
            widget.icon,
            color: const Color(0xFF584CD1),
            size: widget.mini ? 20 : 50,
          ),
        ),
      ),
    );
  }
}
