import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dialog/error_dialog.dart';
import 'package:first_flutter/desing/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import '../../desing/widgets/accent_button.dart';
import '../../pages/vehicle/vehicle_item.dart';
import '../../desing/dimensions.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    /*Stack - порядок элементов*/
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _saveButton(context)),
      ],
    );
  }

  /*Crete two methods
  * separatorBuilder - разделител между елементами списка
  * itemBuilder - елемент списка с индексом [index]
  * itemCount - количество елементов в списке
  * */
  Widget _list(BuildContext context) {


    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(height: height64, color: SurfaceColor);
        //Container(height: height64, color: SurfaceColor)
      },
      padding: EdgeInsets.only(
        left: pad16,
        right: pad16,
        top: pad16,
        bottom: getListBottomPadding(context),
      ),
    );
  }

  Widget _saveButton(BuildContext context) {
    /*SafeArea - помогает добавить отступы чтобы не мешало системным кнопкам*/
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: pad16, right: pad16),
        child: AccentButton(title: "Save", onTap: () {}),
      ),
    );
  }
}
