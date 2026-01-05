import 'package:first_flutter/desing/dialog/error_dialog.dart';
import 'package:first_flutter/desing/utils/size_utils.dart';
import 'package:first_flutter/pages/driver/driver_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../desing/widgets/accent_button.dart';
import '../../pages/vehicle/vehicle_item.dart';
import '../../desing/dimensions.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    /*Stack - порядок элементов*/
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton
          (context)),
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
        return VehicleItem(onTap: () async {
          await _showDriverPage(context);
        });
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

  Widget _updateButton(BuildContext context) {
    /*SafeArea - помогает добавить отступы чтобы не мешало системным кнопкам*/
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: pad16, right: pad16),
        child: AccentButton(title: "Update", onTap: () {
          _showErrorDialog(context);
        }),
      ),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(
          textError: "Server is unavailable. Please try again later.",
        );
      },
    );
  }

  Future <void> _showDriverPage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DriverPage();
    }));
  }
}
