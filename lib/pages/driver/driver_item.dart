import 'dart:ffi';

import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/images.dart';
import 'package:first_flutter/desing/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverItem extends StatelessWidget {
  final String driverName;
  final bool isSelected;
  final VoidCallback onTap;

  const DriverItem({
    super.key,
    required this.isSelected,
    required this.driverName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    /*Row - строка карточки
    * InkWell - позволяет сделать клик или еще что то
    * */
    return SizedBox(
      height: height64,
      child: Card(
        color: SurfaceColor,
        elevation: el006,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bdr8),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(bdr8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: pad8, right: pad16),
            child: Row(
              children: <Widget>[
                AccountCircleImage,
                SizedBox(width: height16),
                Expanded(child: Text(driverName, style: body2TextStyle,
                  maxLines: 1, overflow: TextOverflow.ellipsis)),
                SizedBox(width: height16),
                if (isSelected) CheckImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
