import 'package:flutter/cupertino.dart';
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
        Align(alignment: Alignment.bottomCenter, child: _updateButton()),
      ],
    );
  }

  /*Crete two methods
  * separatorBuilder - разделител между елементами списка
  * itemBuilder - елемент списка с индексом [index]
  * itemCount - количество елементов в списке
  * */
  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    //расстояние SafeArea
    final bottomPadding = (safeBottomPadding + pad8) * 2 + s40;

    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return const VehicleItem();
        //Container(height: height64, color: SurfaceColor)
      },
      padding: EdgeInsets.only(left: pad16, right: pad16, top: pad16, bottom: bottomPadding),
    );
  }

  Widget _updateButton() {
    /*SafeArea - помогает добавить отступы чтобы не мешало системным кнопкам*/
    return SafeArea(child: Padding(
      padding: const EdgeInsets.only(left: pad16, right: pad16),
      child: AccentButton(title: "Update", onTap: () {}),
    ));
  }
}
