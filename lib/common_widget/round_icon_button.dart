import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color color;
  const RoundIconButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(icon),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: TColor.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
