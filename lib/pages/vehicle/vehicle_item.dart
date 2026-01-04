import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    /*Row - строка карточки
    * InkWell - позволяет сделать клик или еще что то
    * */
    return Card(
      color: SurfaceColor,
      elevation: el006,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(bdr8)),
      child: InkWell(
        borderRadius: BorderRadius.circular(bdr8),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: pad8, right: pad16),
          child: Row(children: <Widget>[MotorcycleImage, _title(), _state()]),
        ),
      ),
    );
  }

  Widget _title() {
    return Container();
  }

  Widget _state() {
    return Container();
  }
}
