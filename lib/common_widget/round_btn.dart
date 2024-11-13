import 'package:flutter/material.dart';
import 'package:snacksprite/common/color_extension.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  const RoundBtn({
    super.key,
    required this.title,
    required this.onPressed,
    this.type = RoundButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        decoration: BoxDecoration(
          color:
              type == RoundButtonType.bgPrimary ? TColor.primary : TColor.white,
          borderRadius: BorderRadius.circular(28),
          border: type == RoundButtonType.bgPrimary
              ? null
              : Border.all(
                  color: TColor.primary,
                  width: 1,
                ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.bgPrimary
                ? TColor.white
                : TColor.primary,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
