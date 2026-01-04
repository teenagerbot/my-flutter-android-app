import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/widgets/accent_button.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String textError;

  const ErrorDialog({super.key, required this.textError});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(pad16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,//минимальный размер окна
          children: <Widget>[
            Text(
              "Oops...",
              style: TextStyle(
                color: secondaryColor,
                fontSize: fontSize24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: height8),
            Text(
              textError,
              style: TextStyle(
                color: secondaryColor,
                fontSize: fontSize16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: height8),
            Center(
              child: AccentButton(title: "OK", onTap: () {
                Navigator.pop(context);//close dialog
              }),
            )
          ],
        ),
      ),
    );
  }
}
