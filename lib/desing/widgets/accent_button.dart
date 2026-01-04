import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccentButton extends StatelessWidget {
  /*parameters*/
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular
          (20)),
        padding: const EdgeInsets.only(left: pad16, right: pad16),
        minimumSize: Size(s200, s40),
        maximumSize: const Size.fromHeight(s40)
      ),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: SurfaceColor,
          fontWeight: FontWeight.w600,
          fontSize: fontSize14,
        ),
      ),
    );
  }
}
